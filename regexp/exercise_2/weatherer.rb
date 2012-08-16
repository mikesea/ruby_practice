file = File.open "data/weather.dat"
lines = file.readlines
days = {}

lines.each { |line|
  if line =~ /^\s*\d+\s*\d+\**\s*\d+/
    day_stats = line.split(" ")
    day = day_stats[0].to_i
    temp_spread = day_stats[1].to_i - day_stats[2].to_i
    days[day] = { :temp_spread => temp_spread }
  end
}

lowest_spread = days.first
days.each { |day|
  if day[1][:temp_spread] < lowest_spread[1][:temp_spread]
    lowest_spread = day
  end
}

puts "The lowest spread occured on day #{lowest_spread[0]}."
puts "with a spread of #{lowest_spread[1][:temp_spread]} degrees."