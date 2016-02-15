class StaticPagesController < ApplicationController
  def author
    @active_menu_item = "author"
    @page_image = "/assets/author.jpg"
    @page_title = ""
    @page_summary = ""
  end


  def contact_me
    @active_menu_item = "contact_me"
    @page_image = "/assets/contact_me.jpg"
    @page_title = "Contact me"
    @page_summary = "Anytime, anyhow."
  end
end
