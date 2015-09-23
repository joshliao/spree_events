Deface::Override.new(
  virtual_path: 'spree/layouts/admin',
  name: 'events_admin_sidebar_menu',
  insert_bottom: '#main-sidebar',
  partial: 'spree/admin/shared/events_sidebar_menu'
)
