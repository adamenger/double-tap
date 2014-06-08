require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.3floyds.com/beer/zombie-dust/'))
doc.css("div[data-type='To-Go']").each do |div|
  if div['data-availablity'] == "unavailable"
    puts "Looks like Zombie Dust is not available To Go!"
  elsif div['data-availablity'] == "available"
    puts "Looks like Zombie Dust is available!"
  end
end
