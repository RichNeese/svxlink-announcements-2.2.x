# /home/pi/svxlink/id_announcement.tcl
# Determine the current time
set now [clock seconds];
set hour [clock format $now -format "%H"];
set minute [clock format $now -format "%M"];
set day [clock format $now -format "%u"];

#~~~ Option 2, list of days & times for the announcement
#define the days and times for the announcement to play
#days are 1-7, Monday is 1 Sunday is 7
set Annoucement_DayHourMin [list \
1 11 10 \
1 14 10 \
1 17 10 \
1 21 10
]
# check whether the output time has been reached
foreach {a_day a_hour a_minute} $Annoucement_DayHourMin {
#	puts "Day: $a_day Hour: $a_hour Minute: $a_minute";

#	Daily at given times (ignores the day constraint in the list)
	if {$hour == $a_hour && $minute == $a_minute} {

		puts "output id_announcement";
		playMsg "Announcements" "greeting";
	}
}