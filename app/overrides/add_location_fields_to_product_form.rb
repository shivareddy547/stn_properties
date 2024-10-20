Deface::Override.new(
  virtual_path: "spree/admin/products/_form",
  name: "add_location_fields_to_product_form",
  insert_bottom: '[data-hook="admin_product_form_right"]',
  text: <<-HTML
    <div data-hook="admin_product_form_location">
      <h3>Location & Rating Details</h3>

      <div class="form-group">
        <%= f.label :rating, 'Rating' %>
        <%= f.number_field :rating, step: 0.1, min: 0, max: 5, class: 'form-control' %>
      </div>

      <div class="form-group">
        <%= f.label :latitude, 'Latitude' %>
        <%= f.text_field :latitude, class: 'form-control' %>
      </div>

      <div class="form-group">
        <%= f.label :longitude, 'Longitude' %>
        <%= f.text_field :longitude, class: 'form-control' %>
      </div>

      <div class="form-group">
        <%= f.label :address1, 'Address' %>
        <%= f.text_field :address1, class: 'form-control' %>
      </div>

      <div class="form-group">
        <%= f.label :city, 'City' %>
        <%= f.text_field :city, class: 'form-control' %>
      </div>

      <div class="form-group">
        <%= f.label :state, 'State' %>
        <%= f.text_field :state, class: 'form-control' %>
      </div>

      <div class="form-group">
        <%= f.label :country, 'Country' %>
        <%= f.text_field :country, class: 'form-control' %>
      </div>

      <div class="form-group">
        <%= f.label :pincode, 'Pincode' %>
        <%= f.text_field :pincode, class: 'form-control' %>
      </div>

      <div class="form-group">
        <%= f.label :country_code, 'Country Code' %>
        <%= f.text_field :country_code, class: 'form-control' %>
      </div>
    </div>
  HTML
)
