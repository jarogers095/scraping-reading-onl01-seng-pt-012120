require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/our-courses")
doc = Nokogiri::HTML(html)

courses = doc.css(".inlineMobileLeft-2Yo002 div.text-4GLMvr div.title-oE5vT4")

courses.each do |course|
  puts course.text
end

