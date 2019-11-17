

var div = '<div id="divPopupTimeOut" style="display: none; text-align: left; margin-top: 15px; width: 280px !important; position: absolute; top: 194px; right: 10%; z-index: 9999; height: 165px; background-color: rgb(238, 238, 238); border: 2px solid rgb(153, 153, 153);left: 41%;" class="alert alert-warning">'
    + '<div class="row" style="margin-top:10px; margin-left:10px;">'
    + 'Your session is about to expire!'
    + '<br />'
    + '<span id="CountDownHolder"></span>'
    + '<br />'
    + 'Click OK to continue your session.'
    + '</div>'
    + '<div class="row">'
    + '<div class="text-center button-block" style="text-align:center; margin-top:22px;">'
    + '<button type="button" class="btn btn-default btn-sm" onclick="SessionTimeout.sendKeepAlive();">OK</button>'
    + ' <button type="button" class="btn btn-default btn-sm" onclick="SessionTimeout.hidePopup();">Cancel</button>'
    + '</div>'
    + '</div>'
    + '</div>'


//var fuc = '@function {'
//    + 'public int PopupShowDelay'
//    + '{'
//    + 'get'
//    + '{'
//    + 'return 1000 * (Convert.ToInt32(FormsAuthentication.Timeout.TotalSeconds) - 130);'
//    + '}'
//    + '}'
//    + '}'

var loginUrl = '/Login';
var extendMethodUrl = '/Account/ExtendSession';
$(document).ready(function () {
    $('html').append(div);
    //$('html').append(fuc);

    window.SessionTimeout = (function () {
        var _timeLeft, _popupTimer, _countDownTimer;
        var stopTimers = function () {
            window.clearTimeout(_popupTimer);
            window.clearTimeout(_countDownTimer);
        };
        var updateCountDown = function () {
            var min = Math.floor(_timeLeft / 60);
            var sec = _timeLeft % 60;
            if (sec < 10)
                sec = "0" + sec;

            document.getElementById("CountDownHolder").innerHTML = min + ":" + sec;

            if (_timeLeft > 0) {
                _timeLeft--;
                if (_timeLeft < 120) {
                    if (document.getElementById("divPopupTimeOut") !== null) {
                        document.getElementById("divPopupTimeOut").style.display = "block";
                    }
                }
                _countDownTimer = window.setTimeout(updateCountDown, 1000);
            } else {
                document.location = loginUrl;
            }
        };
        var showPopup = function () {
            //$("#divPopupTimeOut").show();
            if (_timeLeft !== undefined) {
                if (_timeLeft < 120) {
                    if (document.getElementById("divPopupTimeOut") !== null) {
                        document.getElementById("divPopupTimeOut").style.display = "block";
                    }
                }
            }
            _timeLeft = 30000;
            updateCountDown();
        };
        var schedulePopup = function () {
            //$("#divPopupTimeOut").hide();
            
            if (document.getElementById("divPopupTimeOut") !== null) {
                document.getElementById("divPopupTimeOut").style.display = "none";
            }
            

            stopTimers();
            _popupTimer = window.setTimeout(showPopup, '@PopupShowDelay');
        };
        var hidePopup = function () {
            //$("#divPopupTimeOut").hide();
            if (document.getElementById("divPopupTimeOut") !== null) {
                document.getElementById("divPopupTimeOut").style.display = "none";
            }
        };
        var sendKeepAlive = function () {
            stopTimers();
            //$("#divPopupTimeOut").hide();
            if (document.getElementById("divPopupTimeOut") !== null) {
                document.getElementById("divPopupTimeOut").style.display = "none";
            }
            $.ajax({
                type: "GET",
                url: extendMethodUrl,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function successFunc(response) {
                    SessionTimeout.schedulePopup();
                },
                error: function () {
                }
            });
        };
        return {
            schedulePopup: schedulePopup,
            sendKeepAlive: sendKeepAlive,
            hidePopup: hidePopup,
            stopTimers: stopTimers,
        };

    })();



    SessionTimeout.schedulePopup();
});


