class <%= migration_class_name %> < <%= activerecord_migration_class %>
  def change
<% attributes.each do |attribute| -%>
<% Mobility.available_locales.each do |locale| -%>
<% column_name = Mobility.normalize_locale_accessor(attribute.name, locale) -%>
<% if connection.column_exists?(table_name, column_name) -%>
<% warn "#{column_name} already exists, skipping." -%>
<% else -%>
    add_column :<%= table_name %>, :<%= column_name %>, :<%= attribute.type %><%= attribute.inject_options %>
    <%- if attribute.has_index? -%>
    add_index  :<%= table_name %>, :<%= column_name %><%= attribute.inject_index_options %>, name: :<%= translation_index_name(column_name) %>
    <%- end -%>
<% end -%>
<% end -%>
<% end -%>
  end
end
