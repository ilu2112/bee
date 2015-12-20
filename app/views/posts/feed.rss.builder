#encoding: UTF-8

xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Coding Buzz"
    xml.author "Marcin Skiba"
    xml.description "where (software) craftsmanship meets passion"
    xml.link "http://coding.buzz"
    xml.language "en"

    for post in @blog_posts
      xml.item do
        if post.title
          xml.title post.title
        else
          xml.title ""
        end
        xml.author "Marcin Skiba"
        xml.pubDate post.created_at.to_s(:rfc822)
        xml.link "http://coding.buzz/posts/" + post.id.to_s + "/"
        xml.guid post.id
        xml.description "<p>" + post.summary + "</p>"
      end
    end
  end
end