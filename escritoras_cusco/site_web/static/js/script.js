$(document).ready(function () {
	var prev;
	$('.product-item').each(function () {
		var text = $("h5", this).text().trim();
		if (prev == text)
			$(this).css('display', 'none');

		prev = text;
	});

	//agregando clase active al primer boton
	$('.category_list .category_item[category="all"]').addClass('active');

	//FILTRANDO PRODUCTOS
	$('.category_item').click(function () {
		var catProduct = $(this).attr('category');
		console.log(catProduct);

		//agregando color diferente al boton clickeado
		$('.category_item .btn').removeClass('active');
		$(".btn",this).addClass('active');
		//ocultando personajes
		$('.product-item').css('transform', 'scale(0)');
		function hideProduct() {
			$('.product-item').hide();

		} setTimeout(hideProduct, 400);

		//mostrando personajes
		function showProduct() {
			$('.product-item[category="' + catProduct + '"]').show();
			$('.product-item[category="' + catProduct + '"]').css('transform', 'scale(1)');
			console.log($('.product-item[style*="display: none"]').length);
			console.log($('.product-item').length);
			if ($('.product-item[style*="display: none"]').length === $('.product-item').length){
				$('.products-list').text("Ningún elemento corresponde a su búsqueda.");
			}
			else {
				$('.products-list').text("");
			}
		} setTimeout(showProduct, 400);
		//$('.product-item[category="'+catProduct+'"]').css('transform', 'scale(1)')
		//$('.product-item[category="'+catProduct+'"]').show();
	});

	//MOSTRANDO TODOS LOS PRODUCTOS
	$('.category_item[category="all"]').click(function () {
		function showAll() {
			$('.product-item').show();
			var prev;
			$('.product-item').each(function () {
				var text = $("h5", this).text().trim();
				if (prev == text)
					$(this).css('display', 'none');

				prev = text;
			});
			$('.product-item').css('transform', 'scale(1)');
		} setTimeout(showAll, 400);

	});

});
