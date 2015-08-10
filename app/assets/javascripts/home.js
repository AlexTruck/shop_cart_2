$(document).ready(function() {

  var $count = $('#cart-count');
  var $sum = $('#cart-sum');

  function updateCart(data) {
    var sum = 0,
      price = 0;
    $.each(data, function (index, val) {
      sum += val.count;
      price += parseFloat(val.product.price) * val.count;
    });

    $count.text(sum);
    $sum.text(price);
  }
  $('button.product-buy').click(function() {
    var productId = $(this).data('id');
    $.ajax({
      type: "PATCH",
      url: "/carts/" + productId,
      success: updateCart
    });
  });
});