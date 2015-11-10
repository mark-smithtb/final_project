$(function() {
  $("#slider").slider({
    range: "max",
    min: 50,
    max: 99,
    value: 75,
    slide: function(event, ui) {
      $(".circle").val(ui.value);
      var x = parseInt($(".circle").val());
      if (x <= 60) {
        $(".circle").css("background", "radial-gradient(circle at 100px 100px, rgb(77, 166, 207), rgb(-40, 80, 107))");
      } else if (x > 60 && x <= 65) {
        $(".circle").css("background", "radial-gradient(circle at 100px 100px, rgb(90, 197, 207), rgb(-27, 117, 107))");
      } else if (x > 65 && x <= 70) {
        $(".circle").css("background", "radial-gradient(circle at 100px 100px, rgb(125, 215, 191), rgb(8, 135, 91))");
      } else if (x > 70 && x <= 75) {
        $(".circle").css("background", "radial-gradient(circle at 100px 100px, rgb(177, 207, 161), rgb(60, 119, 61))");
      } else if (x > 75 && x <= 80) {
        $(".circle").css("background", "radial-gradient(circle at 100px 100px, rgb(230, 191, 124), rgb(113, 111, 24))");
      } else if (x > 80 && x <= 85) {
        $(".circle").css("background", "radial-gradient(circle at 100px 100px, rgb(215, 145, 105), rgb(98, 65, 5))");
      } else if (x > 85 && x <= 90) {
        $(".circle").css("background", "radial-gradient(circle at 100px 100px, rgb(205, 113, 89), rgb(88, 33, -11))");
      } else if (x > 90) {
        $(".circle").css("background", "radial-gradient(circle at 100px 100px, rgb(196, 70, 58), rgb(79, -10, -42))");
      };
    }
  });
  $(".circle").val($("#slider").slider("value"));
});

$(document).ready(function() {
  $('#temp_request_submit').submit(function(e) {
    e.preventDefault()
    var temperature = $('.circle');
    var room_assignment_id = $(this).data

    $.ajax('/temp_requests/create', {
      method: 'POST',
      data: {
        temperature: temperature,
        room_assignment_id: room_assignment_id
      }
    });
  });
});
