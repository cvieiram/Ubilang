module AssistancesHelper
  def assistance_text_links(assistance)
    content_tag :h1 do
    content_tag(:b, assistance) 
    end
  end
end
