function startTimer(duration, display) {
    var timer = duration;
    var days, hours, minutes, seconds;
    setInterval(function () {
        days = parseInt(timer / (24*60*60), 10);
        hours = parseInt(timer / (60*60), 10) - days * 24;
        minutes = parseInt(timer / 60, 10) - days * 24 * 60 - hours * 60;
        seconds = parseInt(timer % 60, 10);

        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        display.text(days + "d " + hours + "h " + minutes + "m " + seconds + "s");

        if (--timer < 0) {
            timer = duration;
        }
    }, 1000);
}

jQuery(function ($) {
    var eventDate = Date.parse('Sat, 18 Jul 2015 14:00:00 GMT-0500');
    var timeToGo = eventDate/1000 - Date.now()/1000;
    var display = $('#time');
    startTimer(timeToGo, display);
});
