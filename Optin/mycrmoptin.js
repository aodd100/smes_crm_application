/// <reference path="jquery-3.3.1.js" />
(function ($) {
    var intervalId;
    var runCount = 0;
    var mypage = "/Optin/optinpage.html";
    var myname = "Opt-In Client";

    var dynabox = '<div id="dynabox" class="dynaskin popup-content" style="display:none;">'
        + '<div id="dragbar" class="CommonColor" style="text-align:right;color: #fff;height: 32px;">'
        + '<span id="hidebox" onclick="HideBox();return false"><b>X&nbsp;</b></span>'
        + '</div>'
        + '<iframe scrolling="yes" id="dynaframe" name="dynaframe" src="" frameborder="0" style="border: 1px solid #999;"></iframe>'
        + '</div>';
    var jv = '<script type="text/javascript">function HideBox() { document.getElementById("dynabox").style.visibility = "hidden"; } </script>'
    function displayOptin() {
        runCount++;
        $('body').append(dynabox);
        $('body').append(jv);
        var w = 455;
        var h = 545;
        var x = (screen.width - w) / 2;
        var y = ((screen.height - h) / 2) -100;
        //winprops = 'height=' + h + ',width=' + w + ',top=' + wint + ',left=' + winl + ',scrollbars=' + scroll + 'fullscreen=no,toolbar=no,status=no,menubar=no,resizable=no,directories=no,location=no';
        //win = window.open(mypage, myname, winprops);
        document.getElementById('dynaframe').src = "";
        var el = document.getElementById('dynaframe').src = mypage;
        var modal = document.getElementById('dynabox');
        $("#dynabox, #dynaframe").addClass("active");

        modal.style.display = "block";
        $("#dynabox").css("display", "block")
        $("#dynabox").css({
            "top": y,
            "left": x,
            "width": w+2,
            "height": h
        });
        $("#dynaframe").css({
            "width": w,
            "height": h
        });
        $("#dynabox, #dynaframe").addClass("active")

        //if (parseInt(navigator.appVersion) >= 4) { win.window.focus(); }

        if (runCount > 1) {
            clearInterval(intervalId)
        }

    }
    intervalId = setInterval(displayOptin, 3000);

    $('.hidebox').on('click', function () {

        alert("jhjhj");
       $("#dynabox, #dynaframe").removeClass("active")
       $("#dynabox,").css("display","none")
    });
    
})(jQuery);