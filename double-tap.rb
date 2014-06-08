require 'nokogiri'
require 'open-uri'

# grab the html
doc = Nokogiri::HTML(open('http://www.3floyds.com/beer/zombie-dust/'))

# grab the div which states whether or not it's available
doc.css("div[data-type='To-Go']").each do |div|

  # if the class is set to unavailable, do something
  if div['data-availablity'] == "unavailable"

    puts "Looks like Zombie Dust is not available To Go!"
  
  # if the class is set to available, sound the alarms
  elsif div['data-availablity'] == "available"

    puts "Looks like Zombie Dust is available!"

    # send mail, tweet, sms...
  end
end
