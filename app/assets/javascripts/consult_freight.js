$(document).ready(function () {
  $('#input-cep').cep();
  $('#uf').change(function () {
    $('.btn-calculate-freight').show()
  });
  $("#close").click(function () {
    location.href = '/'
  })
});

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
  var price = generator.price;
  var format_price = price.toLocaleString('pt-br',{style: 'currency', currency: 'BRL'});

  $("#name").val(generator.name);
  $("#price").val(format_price);
  $("#generator_id").val(generator.id);
}

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
      show_cubagem(res.response);
    }),
    error: (function (msg) {
      alert('Nada encontrado referente aos parametros informados!');
    })
  });
}

function show_cubagem(cubagem) {
  console.log(cubagem);
  var cubage_text = "\
  <form class='form-inline'></form>\
  <label>Cubagem:</label> \
  <input value='" + cubagem.cubage.toFixed(3)  + "' disabled>\
  <label>Pesso minimo:</label>\
  <input value='" + cubagem.weight_min + "' disabled>\
  <label>Pesso maximo:</label> \
  <input value='" + cubagem.weight_max + "' disabled>\
  <label>Custo</label>\
  <input value='" + cubagem.cost.toFixed(3)  + "' disabled>\
  \
  "
  cubage_text = $.parseHTML(cubage_text);
  $("#cubage-show").append(cubage_text);
  $('#cubage-show').show()

}