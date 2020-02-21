require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)

courses = doc.css("div.text-4GLMvr div.title-oE5vT4")

courses.each do |course|
  puts course.text
end

