
    var sessionTimeoutWarning =	'System.Configuration.ConfigurationSettings.AppSettings["SessionWarning"].ToString()';
    var sessionTimeout = 'Session.Timeout';
    var timeOnPageLoad = new Date();
    var sessionWarningTimer = null;
    var redirectToWelcomePageTimer = null;

    //For warning
    var sessionWarningTimer = setTimeout('SessionWarning()', parseInt(sessionTimeoutWarning) * 60 * 1000);

    //To redirect to the welcome page
    var redirectToWelcomePageTimer = setTimeout('RedirectToWelcomePage()', parseInt(sessionTimeout) * 60 * 1000);

    //Session Warning
    function SessionWarning() {
        //minutes left for expiry
        var minutesForExpiry =  (parseInt(sessionTimeout) - parseInt(sessionTimeoutWarning));
        var message = "Your session will expire in another " + minutesForExpiry + " mins. Do you want to extend the session?";

        //Confirm the user if he wants to extend the session
        answer = confirm(message);

        //if yes, extend the session.
        if(answer){
            var img = new Image(1, 1);
            img.src = 'KeepAlive.aspx?date=' + escape(new Date());

            //Clear the RedirectToWelcomePage method
            if (redirectToWelcomePageTimer != null) {
                clearTimeout(redirectToWelcomePageTimer);
            }
                //reset the time on page load
            timeOnPageLoad =  new Date();
            sessionWarningTimer = setTimeout('SessionWarning()',
            parseInt(sessionTimeoutWarning) * 60 * 1000);
            //To redirect to the welcome page
            redirectToWelcomePageTimer = setTimeout('RedirectToWelcomePage()',parseInt(sessionTimeout) * 60 * 1000);
        }

        //*************************
        //Even after clicking ok(extending session) or cancel button,
        //if the session time is over. Then exit the session.
        var currentTime = new Date();
        //time for expiry
        var timeForExpiry = timeOnPageLoad.setMinutes(timeOnPageLoad.getMinutes() +
            parseInt(sessionTimeout));

        //Current time is greater than the expiry time
        if(Date.parse(currentTime) > timeForExpiry)            {
                alert("Session expired. You will be redirected to welcome page");
                window.location = "../Welcome.aspx";
        }
        //**************************
    }

    //Session timeout
    function RedirectToWelcomePage(){
        alert("Session expired. You will be redirected to welcome page");
        window.location = "../Welcome.aspx";
    }
