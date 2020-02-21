require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)

courses = doc.css(".text-4GLMvr")

courses.each do |course|
  puts course.text.strip
end
