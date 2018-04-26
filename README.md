# RubyAlarmClock
Basic alarm clock written in ruby

to use (cd to location of the two files): 
> ruby AlarmClock.rb


This program was written on a Mac, and I've seen that line 39 won't work on other machines,
if this is the case, try to replace it with:
> pid = fork{ exec 'mpg123','-q', "AlarmSound.mp3" }
