## Root High voltage static pages
HighVoltage.configure do |config|
  config.home_page    = 'home'
  config.layout       = 'slate'
  config.route_drawer = HighVoltage::RouteDrawers::Root
end
