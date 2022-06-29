namespace eval Logic {

Logic::addMinuteTickSubscriber net_announcement;
proc net_announcement {} {
#puts "Output net announcement?";
source "/home/orp/svxlink/net_announcement.tcl";
}

Logic::addMinuteTickSubscriber id_announcement;
proc id_announcement {} {
#puts "Output id announcement?";
source "/home/orp/svxlink/id_announcement.tcl";
}

Logic::addMinuteTickSubscriber meeting_announcement;
proc meeting_announcement {} {
#puts "Output id announcement?";
source "/home/orp/svxlink/meeting_announcement.tcl";
}

Logic::addMinuteTickSubscriber meeting_announcement;
proc meeting_announcement {} {
#puts "Output id announcement?";
source "/home/orp/svxlink/bbq_announcement.tcl";
}

}