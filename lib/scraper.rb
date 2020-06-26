require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)
doc.css("headline-26OIBN")
doc.css(".headline-26OIBN").text
puts doc.css(".headline-26OIBN")
courses = doc.css(".text-4GLMvr.title-oE5vT4")
courses.collexct {|c| c.text.strip}