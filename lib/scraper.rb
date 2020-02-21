require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)

courses = doc.css("#cd016a4c-d090-5b88-9be3-63e6d9187edf .title-oE5vT4")

courses.each do |course|
  puts course.text.strip
end
