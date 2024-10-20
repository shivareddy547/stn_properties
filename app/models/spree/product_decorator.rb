
Spree::Product.class_eval do
    # Alias spree_roles to roles if the method exists
    belongs_to :option_type, class_name: "Spree::OptionType", optional: true
    after_save :update_address

  geocoded_by :coordinates
  after_validation :reverse_geocode, if: ->(obj) { obj.latitude.present? && obj.longitude.present? && obj.address.blank? }

  # def coordinates
  #   [ latitude, longitude ]
  # end

  # Optionally, you can define the full address method
  def full_address
    # "#{latitude}, #{longitude}"
    [ address1, city, state, country, pincode ].compact.join(", ")
  end

  def update_address
    if latitude.present? && longitude.present? && !address1.present?
      result = Geocoder.search([ latitude, longitude ])[0]
      if result.present?
        # Use update_columns to avoid triggering callbacks
        self.update_columns(
          address1: result.street,
          city: result.city,
          state: result.state,
          country: result.country,
          pincode: result.postal_code,
          country_code: result.country_code
        )
      end
    end
  end

  def address
    [ self.address1, self.city, self.state, self.country ].compact.join(", ")
  end

def all_amenities
  room_amenities_type = Spree::OptionType.find_by!(name: "room_amenities")
  @amenities = self.variants.flat_map do |variant|
    variant.option_values.select { |ov| ov.option_type_id == room_amenities_type.id }
  end.uniq
end

def distance_from_center(center_latitude, center_longitude)
  return nil unless latitude && longitude

  # Haversine formula to calculate distance between two points on the earth
  rad_per_deg = Math::PI / 180
  rkm = 6371 # Earth radius in kilometers
  rmi = rkm / 1.60934 # Earth radius in miles

  dlat_rad = (center_latitude - latitude) * rad_per_deg
  dlon_rad = (center_longitude - longitude) * rad_per_deg

  lat1_rad = latitude * rad_per_deg
  lon1_rad = longitude * rad_per_deg

  a = Math.sin(dlat_rad / 2)**2 + Math.cos(lat1_rad) * Math.cos(lat1_rad) * Math.sin(dlon_rad / 2)**2
  c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a))

  distance_in_km = rkm * c
  distance_in_miles = rmi * c

  distance_in_miles # or return distance_in_km based on your preference
end
  end
