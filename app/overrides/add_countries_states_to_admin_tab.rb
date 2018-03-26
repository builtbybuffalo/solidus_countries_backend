Spree::Backend::Config.configure do |config|
  config.menu_items.detect { |menu_item|
    menu_item.label == :settings
  }.sections << :countries
end

Deface::Override.new(
  virtual_path: "spree/admin/shared/_settings_sub_menu",
  name: "countries_admin_tab",
  insert_bottom: "[data-hook='admin_settings_sub_tabs']",
  text: "<%= tab(:countries, label: 'countries') %>"
)
