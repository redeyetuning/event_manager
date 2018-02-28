require "csv"

puts %q{EventManager Initialised}

#,RegDate,first_Name,last_Name,Email_Address,HomePhone,Street,City,State,Zipcode

raise StandardError, "File not found!" unless File.exist? "event_attendees.csv"

#rows = File.readlines("event_attendees.csv").map!{|line| line.split(",")}
#names = Array.new
#rows.each_with_index{|x,i| names << x[2] unless i == 0 }
#puts names

contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
contents.each do |row|
	name = row[:first_name]
	zipcode = row[:zipcode]
	puts "#{name} #{zipcode}"
end