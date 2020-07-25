$(document).ready(function () {

  // open modal for search elements by powergenerator
  $('#simpleSearch').on('change', function() {
    window.location.href = '/'
  });
  // hide button clear filter case exist
  $('#advancedSearch').on('change', function() {
    $("#clear-recomends").hide()
  });

  // reset page for another search recomendations
  $('#clear-recomends').click(function() {
    window.location.href = '/'
  });

  // function for open modal for search recomendations
  var modal = document.getElementById("modal-recomends");
  var btn = document.getElementById("open-modal-recomends");
  var span = document.getElementsByClassName("close")[0];
  $("#clear-recomends").hide()
  btn.onclick = function () {
    modal.style.display = "block";
  }

  span.onclick = function () {
    modal.style.display = "none";
  }

  window.onclick = function (event) {
    if (event.target == modal) {
      modal.style.display = "none";
    }
  }

  $("#button-search").click(function () {
    mySearch();
  })
});

// consult element for a algoritm response data  in recomendations
function mySearch() {
  var request_recomends = $("#request_recomends").val();
  $.ajax({
    method: "post",
    url: "recomendations/",
    data: {
      data: request_recomends
    },
    success: (function (res) {
      filter_elements(res.recomendations);
    }),
    error: (function (msg) {
      alert('Nada encontrado referente aos parametros informados!');
    })
  });
}

// # hide elements by not exist in recomendations

function filter_elements(recomendations) {
  for (let index = 0; index < recomendations.length; index++) {
    $('#product_' + recomendations[index]).hide();
    $("#clear-recomends").show()
    $("#open-modal-recomends").hide()
    
  }
}

// camelcase in consults case by necessary

function camelize(str) {
  return str.replace(/(?:^\w|[A-Z]|\b\w)/g, function (word, index) {
    return index === 0 ? word.toLowerCase() : word.toUpperCase();
  }).replace(/\s+/g, '');
}