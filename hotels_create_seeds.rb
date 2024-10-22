# db/seeds.rb

# Create option types for room attributes
room_type = Spree::OptionType.find_or_create_by!(name: 'room_type', presentation: 'Room Type')
bed_type = Spree::OptionType.find_or_create_by!(name: 'bed_type', presentation: 'Bed Type')
guest_capacity = Spree::OptionType.find_or_create_by!(name: 'guest_capacity', presentation: 'Guest Capacity')
room_amenities = Spree::OptionType.find_or_create_by!(name: 'room_amenities', presentation: 'Room Amenities')

# Create option values for room types
room_type_values = ['Standard Room', 'Deluxe Room', 'Suite', '2-Bedroom Suite', '3-Bedroom Suite']
room_type_values.each do |value|
  Spree::OptionValue.find_or_create_by!(name: value.downcase.gsub(' ', '_'), presentation: value, option_type: room_type)
end

# Create option values for bed types
bed_type_values = ['Single Bed', 'Double Bed', 'Queen Bed', 'King Bed', 'Twin Beds', 'Sofa Bed']
bed_type_values.each do |value|
  Spree::OptionValue.find_or_create_by!(name: value.downcase.gsub(' ', '_'), presentation: value, option_type: bed_type)
end

# Create option values for guest capacity
guest_capacity_values = ['1 Guest', '2 Guests', '3 Guests', '4 Guests', '5 Guests', '6 Guests']
guest_capacity_values.each do |value|
  Spree::OptionValue.find_or_create_by!(name: value.downcase.gsub(' ', '_'), presentation: value, option_type: guest_capacity)
end

# Create option values for room amenities
room_amenities_values = ['Free WiFi', 'Air Conditioning', 'Television', 'Minibar', 'Balcony', 'Ocean View', 'City View', 'Breakfast Included', 'Kitchenette', 'Room Service']
room_amenities_values.each do |value|
  Spree::OptionValue.find_or_create_by!(name: value.downcase.gsub(' ', '_'), presentation: value, option_type: room_amenities)
end

puts 'Seeded option types and values for room offers and properties.'


# db/seeds.rb
# db/seeds.rb


# 1. Create Option Types
cancellation_policy = Spree::OptionType.find_or_create_by!(name: 'Cancellation Policy', presentation: 'Cancellation Policy')
breakfast = Spree::OptionType.find_or_create_by!(name: 'Breakfast', presentation: 'Breakfast')

# 2. Create Base Option Values with Dynamic Data
# For "Cancellation Policy"
cancellation_value_1 = Spree::OptionValue.find_or_create_by!(name: 'free_cancellation', presentation: 'Free cancellation', option_type: cancellation_policy)
cancellation_value_1.update(cancellation_days_before_checkin: 2) # Free cancellation 2 days before check-in

cancellation_value_2 = Spree::OptionValue.find_or_create_by!(name: 'non_refundable', presentation: 'Non-refundable', option_type: cancellation_policy)

# For "Breakfast"
breakfast_value_1 = Spree::OptionValue.find_or_create_by!(name: 'breakfast', presentation: 'Breakfast', option_type: breakfast)
breakfast_value_1.update(breakfast_price: 3500) # Breakfast price Rs. 3,500

breakfast_value_2 = Spree::OptionValue.find_or_create_by!(name: 'breakfast_per_person', presentation: 'Breakfast per person', option_type: breakfast)
breakfast_value_2.update(breakfast_price: 840) # Breakfast price Rs. 840/person

# Optional: Display Seed Confirmation
puts "Option values with custom fields for cancellation and breakfast created successfully!"


# 1. Create Option Types
wifi = Spree::OptionType.find_or_create_by!(name: 'WiFi', presentation: 'WiFi')
payment_terms = Spree::OptionType.find_or_create_by!(name: 'Payment Terms', presentation: 'Payment Terms')

# 2. Create Option Values for "Cancellation Policy"
# Spree::OptionValue.find_or_create_by!(name: 'free_cancellation_before', presentation: 'Free cancellation before', option_type: cancellation_policy)
Spree::OptionValue.find_or_create_by!(name: 'non_refundable', presentation: 'Non-refundable', option_type: cancellation_policy)

# 3. Create Option Values for "WiFi"
Spree::OptionValue.find_or_create_by!(name: 'free_wifi', presentation: 'Free WiFi', option_type: wifi)

# 4. Create Option Values for "Breakfast"
# Spree::OptionValue.find_or_create_by!(name: 'breakfast_rs', presentation: 'Breakfast at', option_type: breakfast)
# Spree::OptionValue.find_or_create_by!(name: 'breakfast_rs', presentation: 'Breakfast available (Rs. 840 / person)', option_type: breakfast)

# 5. Create Option Values for "Payment Terms"
Spree::OptionValue.find_or_create_by!(name: 'pay_later', presentation: 'Pay later', option_type: payment_terms)
Spree::OptionValue.find_or_create_by!(name: 'pay_now', presentation: 'Book and pay now', option_type: payment_terms)

# 6. Optional: Display Seed Confirmation
puts "Option types and values for hotel rooms created successfully!"

# db/seeds.rb
#
# Define the option types for benefits and optional benefits
benefits_option_types = ['free_cancellation', 'free_wifi', 'non_smoking', 'city_view']
optional_benefits_option_types = ['breakfast', 'early_checkin', 'late_checkout']

# Method to safely find or create option types with normalized names
def find_or_create_option_type(name)
  normalized_name = name.downcase

  # Attempt to find the existing option type
  option_type = Spree::OptionType.find_by(name: normalized_name)

  # If it doesn't exist, create it
  unless option_type
    begin
      option_type = Spree::OptionType.create!(
        name: normalized_name,
        presentation: name.humanize,
        filterable: true
      )
    rescue ActiveRecord::RecordInvalid => e
      # Handle race condition where the record is created by another process
      option_type = Spree::OptionType.find_by(name: normalized_name)
    end
  end

  option_type
end

# Create or find the option types for benefits
benefits_option_types.each do |name|
  find_or_create_option_type(name)
end

# Create or find the option types for optional benefits
optional_benefits_option_types.each do |name|
  find_or_create_option_type(name)
end


# First, run the seed for option types and option values (from the previous step)
room_type = Spree::OptionType.find_by!(name: 'room_type')
bed_type = Spree::OptionType.find_by!(name: 'bed_type')
guest_capacity = Spree::OptionType.find_by!(name: 'guest_capacity')
room_amenities = Spree::OptionType.find_by!(name: 'room_amenities')

# Fetch all stores (assuming you have stores created already)
stores = Spree::Store.all
taxons = Spree::Taxon.all

# Create 10 sample hotels
hotels_data = [
  { name: 'Sunset Beach Hotel', description: 'A beautiful seaside hotel with scenic ocean views.' },
  { name: 'Mountain View Resort', description: 'Nestled in the mountains, perfect for relaxation.' },
  { name: 'City Central Inn', description: 'Located in the heart of the city, close to major attractions.' },
  { name: 'Luxury Palace Hotel', description: 'A premium hotel offering luxury and comfort.' },
  { name: 'Eco Green Lodge', description: 'An eco-friendly lodge surrounded by nature.' },
  { name: 'Riverside Hotel', description: 'Peaceful riverside views with modern amenities.' },
  { name: 'Grand Tower Suites', description: 'Spacious suites in a high-rise building.' },
  { name: 'Seaview Boutique Hotel', description: 'Small boutique hotel with personalized service.' },
  { name: 'Desert Mirage Resort', description: 'Exotic desert resort with unique architecture.' },
  { name: 'Countryside Bed & Breakfast', description: 'Charming countryside B&B with homestyle hospitality.' }
]

hotels_data.each do |hotel_data|
  hotel = Spree::Product.create!(
    name: hotel_data[:name],
    description: hotel_data[:description],
    price: rand(50..500), # Random price for demo purposes
    available_on: Time.current,
    shipping_category: Spree::ShippingCategory.find_or_create_by!(name: 'Hotels'),
    stores: stores # Assign all stores during creation
    taxons: taxons
  )

  # Create variants (rooms) for each hotel
  room_variants = [
    { room_type: 'Standard Room', bed_type: 'Queen Bed', guest_capacity: '2 Guests', price: rand(50..150) },
    { room_type: 'Deluxe Room', bed_type: 'King Bed', guest_capacity: '3 Guests', price: rand(100..250) },
    { room_type: 'Suite', bed_type: 'King Bed', guest_capacity: '4 Guests', price: rand(200..400) },
    { room_type: '2-Bedroom Suite', bed_type: 'Twin Beds', guest_capacity: '4 Guests', price: rand(250..450) },
    { room_type: '3-Bedroom Suite', bed_type: 'King Bed', guest_capacity: '6 Guests', price: rand(300..500) }
  ]

  room_variants.each do |variant_data|
    # Find the option values first
    room_type_value = Spree::OptionValue.find_by!(name: variant_data[:room_type].downcase.gsub(' ', '_'), option_type: room_type)
    bed_type_value = Spree::OptionValue.find_by!(name: variant_data[:bed_type].downcase.gsub(' ', '_'), option_type: bed_type)
    guest_capacity_value = Spree::OptionValue.find_by!(name: variant_data[:guest_capacity].downcase.gsub(' ', '_'), option_type: guest_capacity)

    # Create the variant and associate option values
    variant = hotel.variants.new(
      price: variant_data[:price],
      sku: "SKU-#{SecureRandom.hex(4)}",
      is_master: false
    )

    # Associate the variant with option values
    variant.option_values << room_type_value
    variant.option_values << bed_type_value
    variant.option_values << guest_capacity_value

    # Assign random amenities
    selected_amenities = Spree::OptionValue.where(option_type: room_amenities).sample(3) # Select 3 random amenities
    selected_amenities.each do |amenity|
      variant.option_values << amenity
    end

    # Save the variant after associating the option values
    variant.save!
  end
end

puts 'Seeded 10 hotels with room offers and associated them with all stores.'
