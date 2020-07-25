$(document).ready(function () {});

function openModal(product_id) {
  document.getElementById('id01').style.display = 'block'
  var modal = document.getElementById("modal-consult-freigth");
  var span = document.getElementsByClassName("close")[0];

  span.onclick = function () {
    modal.style.display = "none";
  }

  window.onclick = function (event) {
    if (event.target == modal) {
      modal.style.display = "none";
    }
  }

  $("#calculate-freight").click(function () {
    calculate();
  })

  $.ajax({
    method: "get",
    url: "consult_generator/" + product_id,
    success: (function (res) {
      show_product(res.generator);
    }),
    error: (function (msg) {
      alert('Nada encontrado!');
    })
  });
}

function show_product(generator) {
  console.log(generator)
  $("#name").val(generator.name);
  $("#price").val(generator.price);
  $("#generator_id").val(generator.id);
}

function calculate() {
  var cep = $('#cep').val();
  var generator_id = $('#generator_id').val();
  $.ajax({
    method: "post",
    url: "find_cep_and_calculate",
    data: {
      cep: cep,
      generator_id: generator_id
    },
    success: (function (res) {
      filter_elements(res.recomendations);
    }),
    error: (function (msg) {
      alert('Nada encontrado referente aos parametros informados!');
    })
  });
}