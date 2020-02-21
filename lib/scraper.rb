require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/our-courses")
doc = Nokogiri::HTML(html)

courses = doc.css("#cd016a4c-d090-5b88-9be3-63e6d9187edf > div > div > div > div > div.text-4GLMvr > div.title-oE5vT4")

courses.each do |course|
  puts course.text
end

#cd016a4c-d090-5b88-9be3-63e6d9187edf > div > div > div > div:nth-child(2) > div.text-4GLMvr > div.title-oE5vT4