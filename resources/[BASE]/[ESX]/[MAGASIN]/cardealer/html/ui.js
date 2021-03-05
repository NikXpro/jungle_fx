function CloseShop() {
    $("#carshop").hide();
    $(".container-item").html('');
    $.post('http://cardealer/fechar', JSON.stringify({}));
}

$(document).ready(function() {
    document.addEventListener("click", function(event) {
        if (event.target.closest(".info") || event.target.closest(".btn")) {
            document.querySelector(".off-aside").classList.toggle("modifier");
        } else if (!event.target.closest(".off-aside")) {
            document.querySelector(".off-aside").classList.remove("modifier");
        }
    }, false);

    $("#fechar").click(function() {
        $("#carshop").hide();
        $(".container-item").html('');
        $.post('http://cardealer/fechar', JSON.stringify({}));
    });

    $(".container-item").on('click', '#comprar', function() {
        $("#carshop").hide();
        $(".container-item").html('');
        $.post('http://cardealer/comprar', JSON.stringify({ id: $(this).data('id') }));
    });

    $(".container-item-categories").on('click', '#filter', function() {
        $(".container-item").html('').fadeOut(0);
        $(".container-item").html('').fadeIn(500);
        $.post('http://cardealer/filter', JSON.stringify({ id: $(this).data('id') }));
    });

    $("#close").click(function() {
        CloseShop()
    });

    window.addEventListener('message', function(event) {
        let data = event.data;

        function addComma(num) {
          return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1.')
        }

        function verificarQtd(num) {
            if (num == 0) {
                return "Rupture de stock!"
            } else {
                return num
            }
        }

         if (data.show) {
            let veiculos_data = data.veiculos
            let categories_data = data.categories
            let table = []
            $('#identidade').html(event.data.identidade);
            $("#carshop").show();
            for (let i = 0; i < 50; i++) {
                table.push(veiculos_data[i])
            }

            for (let item in veiculos_data) {
                $(".container-item").append(`
                  <div class="car-card alt">
                  <div class="meta">
                    <div class="photo" style="background-image: url('` + veiculos_data[item].img + `')"></div>
                    <ul class="details">
                      <li class="tags">
                        <ul>
                          <li><a>` + addComma(veiculos_data[item].valor) + `</a>$</li>
                        </ul>
                      </li>
                    </ul>
                  </div>
                  <div class="description">
                    <h1>` + veiculos_data[item].nome + `</h1>
                    <p>` + veiculos_data[item].descricao + `</p>
                    <p class="read-more">
                      <a id="comprar" data-id="` + veiculos_data[item].modelo + `" onclick="animation()">Acheter</a>
                    </p>
                  </div>
                </div>  
            `);
            }

            for (let item in categories_data) {
                $(".container-item-categories").append(`
                  <div class="car-card alt">
                  <div class="meta">
                  </div>
                  <div class="description">
                    <h1>` + categories_data[item].label + `</h1>
                    <p class="read-more">
                      <a id="filter" data-id="` + categories_data[item].name + `" onclick="animation()">Voir la catégorie</a>
                    </p>
                  </div>
                </div>  
            `);
            }
        }

        if(data.filter){
            let veiculos_data = data.veiculos
            let table = []
            for (let i = 0; i < 50; i++) {
                table.push(veiculos_data[i])
            }

            for (let item in veiculos_data) {
                $(".container-item").append(`
                  <div class="car-card alt">
                  <div class="meta">
                    <div class="photo" style="background-image: url('` + veiculos_data[item].img + `')"></div>
                    <ul class="details">
                      <li class="tags">
                        <ul>
                          <li><a>` + addComma(veiculos_data[item].valor) + `</a>$</li>
                        </ul>
                      </li>
                    </ul>
                  </div>
                  <div class="description">
                    <h1>` + veiculos_data[item].nome + `</h1>
                    <p>` + veiculos_data[item].descricao + `</p>
                    <p class="read-more">
                      <a id="comprar" data-id="` + veiculos_data[item].modelo + `" onclick="animation()">Acheter</a>
                    </p>
                  </div>
                </div>  
            `);
            }
        }
    })
});