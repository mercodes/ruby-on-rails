#hash

eu_hotline = {
  "Austria" => "08 93 81 5555",
  "Belgium" => "0800 32 123",
  "Bulgaria" => "0035 9249 17 223",
  "Croatia" => "01 4833-888",
  "Cyprus" => "357 77 77 72 67",
  "Czech Republic" => "420 549241010",
  "Denmark" => "45 70 201 201",
  "Estonia" => "372 6558088",
  "Finland" => "040-5032199",
  "France" => "01 46 21 46 46",
  "Germany" => "0800 181 0771",
  "Greece" => "1018",
  "Hungary" => "46 323 888",
  "Ireland" => "1850 60 90 90",
  "Italy" => "800 86 00 22",
  "Latvia" => "371 67222922",
  "Lithuania" => "116 111",
  "Luxembourg" => "454545",
  "Malta" => "179",
  "Netherlands" => "0602 222 88",
  "Poland" => "52 70 000",
  "Portugal" => "351 225 50 60 70",
  "Romania" => "0800 801 200",
  "Slovakia" => "0800 112 112",
  "Slovenia" => "800 783 0607",
  "Spain" => "902500002",
  "Sweden" => "020 22 00 60",
}

#country method

def get_country_names(somehash)
  somehash.each { |k, v| puts k }
end

#hotline number method

def get_hotline_number(somehash, key)
  somehash[key]
end 

#loop

loop do
  puts "Hello. Here, you can find suicide hotlines in countries of the European Union."
  puts "Do you need help?"

  answer = gets.chomp
  if answer != "Yes"
  	break 
  end 

  puts "What country do you live in?"
  prompt = gets.chomp 

  if eu_hotline.include?(prompt)
  	puts "The hotline for #{prompt} is #{get_hotline_number(eu_hotline, prompt)}. Please call to get help."
  else 
  	puts "It seems like you have entered an invalid choice. This is a list of countries currently in our directory."
  	get_country_names(eu_hotline)
  	puts "If your country is not listed, please call the emergency services now."
  end
end
