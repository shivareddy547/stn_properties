//= require spree/frontend/api/storefront/cart
//= require ../shared/product_added_modal
alert("tetetettete")
var ADD_TO_CART_FORM_SELECTOR = '.add-to-cart-form'
var VARIANT_ID_SELECTOR = '[name="variant_id"]'
var ADD_TO_CART_SELECTOR = '.add-to-cart-button'

document.addEventListener("turbo:load", function() {
  // Add event listener to the product form submission
  $('#product-details').on('submit', ADD_TO_CART_FORM_SELECTOR, function(event) {
    var $cartForm = $(event.currentTarget);
    var $addToCart = $cartForm.find(ADD_TO_CART_SELECTOR);
    var variantId = $cartForm.find(VARIANT_ID_SELECTOR).val();
    var quantity = parseInt($cartForm.find('[name="quantity"]').val());

    // Validate if variant and quantity are present
    if (!variantId || quantity <= 0) {
      alert('Please select a valid variant and quantity.');
      event.preventDefault();
      return;
    }

    // Proceed with form submission
    event.preventDefault();
    $addToCart.prop('disabled', true);
    
    Spree.ensureCart(function() {
      SpreeAPI.Storefront.addToCart(
        variantId,
        quantity,
        {}, // Empty options as additional options are not required
        function(response) {
          $addToCart.prop('disabled', false);
          Spree.fetchCart();
          Spree.showProductAddedModal(JSON.parse($cartForm.attr('data-product-summary')), Spree.variantById($cartForm, variantId));
          $cartForm.trigger({
            type: 'product_add_to_cart',
            variant: Spree.variantById($cartForm, variantId),
            quantity_increment: quantity,
            cart: response.attributes
          });
        },
        function(error) {
          if (typeof error === 'string' && error !== '') {
            document.querySelector('#no-product-available .no-product-available-text').innerText = error;
          }
          document.getElementById('overlay').classList.add('shown');
          document.getElementById('no-product-available').classList.add('shown');
          window.scrollTo(0, 0);
          $addToCart.prop('disabled', false);
        }
      );
    });
  });
  
  // Initialize CartForm for variant selection and display
  $(ADD_TO_CART_FORM_SELECTOR).each(function(_cartFormIndex, cartFormElement) {
    var $cartForm = $(cartFormElement);
    CartForm($, $cartForm);
  });

  document.addEventListener('turbo:request-start', function () {
    Spree.hideProductAddedModal();
  });
});
