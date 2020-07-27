$(document).ready(function () {
  $('#input-cep').cep();

  $('#uf').change(function () {
    $('.btn-calculate-freight').show()
  });
  $("#close").click(function () {
    location.href = '/'
  })
});

// open modal for get cep user
function openModal(product_id) {
  $('.btn-calculate-freight').hide()
  $('#cubage-show').hide()
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
  // send cep and id generator for calculate
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

// render product detalhe and formats
function show_product(generator) {
  var price = generator.price;
  var format_price = price.toLocaleString('pt-br',{style: 'currency', currency: 'BRL'});

  $("#name").val(generator.name);
  $("#price").val(format_price);
  $("#generator_id").val(generator.id);
}

// show preview of calculation cubage
function calculate() {
  var uf = $('#uf').val();
  var generator_id = $('#generator_id').val();
  $.ajax({
    method: "post",
    url: "find_cep_and_calculate",
    data: {
      uf: uf,
      generator_id: generator_id
    },
    success: (function (res) {
      show_cubage(res.response);
    }),
    error: (function (msg) {
      alert('Nada encontrado referente aos parametros informados!');
    })
  });
}

// render cubage with cubage
function show_cubage(cubage) {
  console.log(cubage);
  var cubage_text = "\
  <form class='form-inline'></form>\
  <label>Cubagem:</label> \
  <input value='" + cubage.cubage.toFixed(3)  + "' disabled>\
  <label>Pesso minimo:</label>\
  <input value='" + cubage.weight_min + "' disabled>\
  <label>Pesso maximo:</label> \
  <input value='" + cubage.weight_max + "' disabled>\
  <label>Custo</label>\
  <input value='" + cubage.cost.toFixed(3)  + "' disabled>\
  \
  "
  cubage_text = $.parseHTML(cubage_text);
  $("#cubage-show").append(cubage_text);
  $('#cubage-show').show()

}