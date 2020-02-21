require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/our-courses")
doc = Nokogiri::HTML(html)

courses = doc.css("div.title-oE5vT4")

courses.each do |course|
  puts course.text
end

