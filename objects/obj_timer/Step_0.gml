var minutes = floor(time / 60);
var seconds = time % 60;

displayMinutes = (minutes < 10)? "0"+string(minutes) : string(minutes);
displaSeconds  = (seconds < 10)? "0"+string(seconds) : string(seconds);

displayTime = displayMinutes + ":" + displaSeconds;