import * as $ from "jquery";
var crmOptin = {

  displayOption: function () {
    let intervalId;
    let runCount = 0;
    let url = "/Optin/optinpage.html";
    let myname = "Opt-In Client";
    let dynabox = '<div id="dynabox" class="dynaskin popup-content" style="display:none;">'
      + '<div id="dragbar" class="CommonColor" style="text-align:right;color: #fff;">'
      + '<span id="hidebox"><b>X&nbsp;</b></span>'
      + '</div>'
      + '<iframe scrolling="yes" id="dynaframe" name="dynaframe" src="" frameborder="0"></iframe>'
      + '</div>';
    $('body').append(dynabox);
    var w = 518;
    var h = 300;
    var x = (screen.width - w) / 2;
    var y = (screen.height - h) / 2;
    //winprops = 'height=' + h + ',width=' + w + ',top=' + wint + ',left=' + winl + ',scrollbars=' + scroll + 'fullscreen=no,toolbar=no,status=no,menubar=no,resizable=no,directories=no,location=no';
    //win = window.open(mypage, myname, winprops);
    var iframe = document.getElementById("dynaframe");
    iframe.src = "";
    var el = iframe.setAttribute('src', url);
    var modal = document.getElementById('dynabox');
    $("#dynabox, #dynaframe").addClass("active");
    modal.style.display = "block";
    $("#dynabox").css({
      "top": y,
      "left": x,
      "width": w,
      "height": h
    });
    $("#dynaframe").css({
      "width": w,
      "height": h
    });
    $("#dynabox, #dynaframe").addClass("active");
    runCount++;
    if (runCount > 1) {
      clearInterval(intervalId);
    }

    intervalId = setInterval(displayOption(), 2000);
  },

 
  closepopup: function () {
    $("#dynabox, #dynaframe").removeClass("active");
  }
};
//# sourceMappingURL=mycrmoptin.js.map
