# /home/pi/svxlink/meeting_announcement.tcl
# Determine the current time
set now [clock seconds];
set hour [clock format $now -format "%H"];
set minute [clock format $now -format "%M"];
set day [clock format $now -format "%u"];

###################################################################################

#~~~ Option 2, list of days & times for the announcement
#define the days and times for the announcement to play
#days are 1-7, Monday is 1 Sunday is 7
set Annoucement_DayHourMin [list \
1 14 15 \
1 19 15 \
2 14 15 \
2 19 15 \
3 14 15 \
3 19 15 \
4 14 15 \
4 19 15 \
5 14 15 \
5 19 15 \
6 14 15 \
6 19 15 \
7 14 15 \
7 19 15 
]
# check whether the output time has been reached
foreach {a_day a_hour a_minute} $Annoucement_DayHourMin {
#	puts "Day: $a_day Hour: $a_hour Minute: $a_minute";
	if {$day == $a_day && $hour == $a_hour && $minute == $a_minute} {
		puts "output meeting_announcement";
		playMsg "Announcements" "monthly";
	}
}
