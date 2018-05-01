# RubyAlarmClock
Basic alarm clock written in ruby


to use (cd to location of the two files): 
> ruby AlarmClock.rb


This program was written on a Mac, and I've seen that apparently line 39 won't work on other machines,
For Linux with VLC installed:
> pid = fork{ exec 'cvlc', "AlarmSound.mp3" }
