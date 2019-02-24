require_relative "../support/env.rb"

class Google < SitePrism::Page
  set_url GOOGLE_PAGE

  element  :search_field,      "input[name='q']"
  element  :search_button,     "button[name='btnK']"
  elements :footer_links,      "#footer a"
  # section  :menu, MenuSection, "#gbx3"
end
