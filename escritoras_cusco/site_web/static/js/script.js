$(document).ready(function(){
	
	//agregando clase active al primer boton
	$('.category_list .category_item[category="all"]').addClass('ct_item-active');

	//FILTRANDO PRODUCTOS
	$('.category_item').click(function(){
		var catProduct = $(this).attr('category');
		console.log(catProduct);

		//agregando color diferente al boton clickeado
		$('.category_item').removeClass('ct_item-active');
		$(this).addClass('ct_item-active');

		//ocultando personajes
		$('.product-item').css('transform', 'scale(0)');
		function hideProduct(){
			$('.product-item').hide();
		}setTimeout(hideProduct,400);
		
		//mostrando personajes
		function showProduct(){
			$('.product-item[category="'+catProduct+'"]').show();
			$('.product-item[category="'+catProduct+'"]').css('transform', 'scale(1)');
		}setTimeout(showProduct,400);
		//$('.product-item[category="'+catProduct+'"]').css('transform', 'scale(1)')
		//$('.product-item[category="'+catProduct+'"]').show();
	});

	//MOSTRANDO TODOS LOS PRODUCTOS
	$('.category_item[category="all"]').click(function(){
		function showAll(){
			$('.product-item').show();
			$('.product-item').css('transform', 'scale(1)');
		}setTimeout(showAll,400);
		
	});
		
});