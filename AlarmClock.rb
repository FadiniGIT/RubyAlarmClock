# => AlarmClock.rb
# => Basic Alarm Clock written in ruby
# => Author: Fadini
# => 4/26/2018
#!/usr/bin/env ruby

require 'date'

#get user input
puts "Alarm Clock"
puts "What hour should you be alerted?"
h = gets.chomp
puts "How many minutes shall you be alerted?"
m = gets.chomp

x = h.to_i
y = m.to_i
i = 0

current_time = DateTime.now
setTime = DateTime.new(2017,4,26, x, y)

current_time.strftime "%H:%M"
setTime.strftime "%H:%M"

if y < 10
	puts "Alarm set for #{x}:0#{y}"
else
	puts "Alarm set for #{x}:#{y}"
end

while i < 1

	current_time = DateTime.now
	current_time.strftime "%H:%M"

	if (current_time.strftime "%H:%M") == (setTime.strftime "%H:%M")
		#PLAY SOME SOUND
		pid = fork{ exec 'afplay', "AlarmSound.mp3" }
		puts "alarm"
		i+=1
	else	
		#DO NOTHING AND LOOP
	end
end