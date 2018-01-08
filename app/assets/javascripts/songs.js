function createSong(title) {
  var newSong = { title: title };
  var pathname = window.location.pathname + "/songs.json";


  $.ajax({
    type: "POST",
    url: pathname,
    data: JSON.stringify({
      song: newSong,
    }),
    contentType: "application/json",
    dataType: "json",
  })
  .done(function(data) {

    var songId = data.id;

    var songTitle = $('<td class="add song"></td>')
      .html(title);

    var deleteSongButton = $('<a data-confirm="Are you sure?" class="btn btn-default pull-right" rel="nofollow" data-method="delete" href="' +
    window.location.pathname + '/songs/' + songId + '">Remove Song</a>')

        // can also use deleteSongButton.addClass("btn btn-default pull-right")
          // deleteSongButton.addRel(nofollow) ?
          //   deleteSongButton.addDatamethod("delete") ? --> look up addClass, addRel, addDataMethod

    songTitle.append(deleteSongButton);

    var tableRow = $('<tr></td>')
      .attr('data-id', songId)
      .append(songTitle);


    $("#songList").append( tableRow );

  })

  .fail(function(error) {
    error_message = error.responseJSON.title[0];
    showError(error_message);
  });
}

function submitSong(event) {
  event.preventDefault();
  resetErrors();
  var title = $("#new-song").val();
  createSong(title);
  $("#new-song").val(null);
}

function showError(message) {
    var errorHelpBlock = $('<span class= "help-block"></span>')
    .attr("id", "error_message")
    .addClass("error")
    .html(message);

    $("#formgroup-title")
      .addClass("has-error")
      .append(errorHelpBlock);
}

function resetErrors() {
  $("#error_message").remove();
  $("#formgroup-song").removeClass("has-error");
}


// function removeSong(title) {
//   var pathname = window.location.pathname + "/songs.json";
//
//   $.ajax({
//     type: "DELETE",
//     url: pathname,
//     contentType: "application/json",
//     dataType: "json"
//   })
//   .done(function(data) {
//     $('???????????').remove();
//   });
// }

$(document).ready(function() {
  $("form").bind('submit', submitSong);
});
