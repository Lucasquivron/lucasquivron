require 'open-uri'
require 'nokogiri'

produit = "bijoux"
list_etsy = []
html_file = open("https://www.etsy.com/search?q=#{produit}")
html_doc = Nokogiri::HTML(html_file)

html_doc.search('.card-title').each do |element|
  puts element.text
  list_etsy << element.text.lstrip.rstrip
end

p list_etsy

