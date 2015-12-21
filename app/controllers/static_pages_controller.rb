class StaticPagesController < ApplicationController
  def author
    @active_menu_item = "author"
    @page_image = "/assets/author.jpg"
    @page_title = "Marcin Skiba"
    @page_summary = "Hey folks! My name is Marcin, I am the CEO at Coding Buzz - a software company of my own."
  end


  def contact_me
    @active_menu_item = "contact_me"
    @page_image = "/assets/contact_me.jpg"
    @page_title = "Contact me"
    @page_summary = "Anytime, anyhow."
  end
end
