<% content_for :head do %>
  <% if products.respond_to?(:total_pages) %>
    <%= rel_next_prev_link_tags products %>
  <% end %>
<% end %>

<div class="col-md-12 col-lg-9" data-hook="homepage_products">
  <div class="row">
    <% cache cache_key_for_products(products) do %>
      <% products.each_with_index do |product, index| %>
        <div id="product_<%= product.id %>" class="">
          <%= render 'spree/shared/product', product: product, image_class: 'product-component-plp-image' %>
        </div>
      <% end %>
    <% end %>
  </div>

  <% if products.respond_to?(:total_pages) %>
    <div class="row pl-md-4 pl-sm-4">
      <div class="col-12">
        <div class="plp-pagination d-none d-lg-flex">
          <%= paginate products, window: 2, theme: 'twitter-bootstrap-4' %>
        </div>

        <div class="plp-pagination d-lg-none">
          <%= paginate products, window: 1, theme: 'twitter-bootstrap-4' %>
        </div>
      </div>
    </div>
  <% end %>
</div>

<script>
  // Get all thumbnail elements
  // const thumbnails = document.querySelectorAll('.thumbnail');

  // // Get the main image element
  // const mainImage = document.getElementById('mainImage');

  // // Add hover event listener to each thumbnail
  // thumbnails.forEach(thumbnail => {
  //   thumbnail.addEventListener('mouseenter', function() {
  //     const imgUrl = this.getAttribute('data-img-url'); // Get the URL from data attribute
  //     mainImage.src = imgUrl; // Change the main image's src to the thumbnail's image
  //   });

  //   // Optionally, if you want the main image to revert to the original on mouse leave
  //   thumbnail.addEventListener('mouseleave', function() {
  //     mainImage.src = "http://localhost:3000/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsiZGF0YSI6NDUsInB1ciI6ImJsb2JfaWQifX0=--35587f28fb04ddf4e83bf8cfcb0d8078c0fa3eb8/eyJfcmFpbHMiOnsiZGF0YSI6eyJmb3JtYXQiOiJwbmciLCJyZXNpemVfdG9fbGltaXQiOlsyNDAsMjQwXX0sInB1ciI6InZhcmlhdGlvbiJ9fQ==--58703dce750b7cf62a803076eaf883cb602ee6fa/HYDRA-RENEWAL-CREAM-Lunalis-Cosmetics-80883198.webp"; // Set this to the original main image URL
  //   });
  // });

  // Get all products
// Get all product containers
const products = document.querySelectorAll('.product');

// Loop through each product
products.forEach(product => {
  const mainImage = product.querySelector('.mainImage img'); // Get the main image for this product
  const thumbnails = product.querySelectorAll('.thumbnail'); // Get all thumbnails for this product

  // Add hover event listener to each thumbnail
  thumbnails.forEach(thumbnail => {
    thumbnail.addEventListener('mouseenter', function() {
      const imgUrl = this.getAttribute('data-img-url'); // Get the URL from data attribute
      mainImage.src = imgUrl; // Change the main image's src to the thumbnail's image
    });

    // Revert to original main image on mouse leave
    thumbnail.addEventListener('mouseleave', function() {
      const originalSrc = mainImage.getAttribute('data-original-src'); // Get the original image URL
      mainImage.src = originalSrc; // Revert to the original main image
    });
  });
});


</script>
<!-- Add this script and CSS for image gallery interaction -->
<style>
  .offer-box.more:hover .radio-buttons {
    display: block;
  }
</style>
<!-- Trigger Button for the Modal -->
<style>
  .modal-xl {
      max-width: 90%;
  }

  /* Gallery layout */
  .image-grid {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
  }
  .image-grid img {
      margin-bottom: 15px;
      width: 100%;
      cursor: pointer;
  }

  .carousel-item img {
      width: 100%;
  }

  .carousel-caption {
      position: static;
      padding-top: 10px;
      background-color: rgba(0, 0, 0, 0.5);
      color: #fff;
      text-align: center;
      font-size: 1.2rem;
  }

  /* Scrollable modal body */
  .modal-body {
      overflow-y: auto;
      max-height: 80vh;
  }

  /* Right property overview section styling */
  .property-overview {
      padding-left: 20px;
      border-left: 1px solid #ddd;
  }

  .property-overview h5 {
      margin-top: 20px;
  }

  .property-overview p {
      margin-bottom: 10px;
  }

  /* Making the property overview scrollable */
  .scrollable-section {
      max-height: 75vh;
      overflow-y: auto;
  }

  .toggle-view {
      display: flex;
      align-items: center;
  }

  .toggle-view button {
      margin-right: 15px;
  }

  /* Tabs styling */
  .nav-tabs {
      margin-bottom: 15px;
  }

  .tab-content .image-grid {
      display: none;
  }
  .tab-content .active-grid {
      display: flex;
  }

  /* Align Tabs beside the Toggle Button */
  .toggle-and-tabs {
      display: flex;
      justify-content: space-between;
      align-items: center;
  }

  .nav-item {
      margin-right: 15px;
  }
  .carousel-item img {
    height: 400px; /* Set a fixed height */
    object-fit: cover; /* Ensures the image covers the area without distortion */
    width: 100%; /* Makes the image responsive */
}
</style>

<script>
  let currentView = 'gallery'; // Default view is gallery

function toggleView(product_id) {
    const galleryView = document.querySelector('.tab-content'+product_id);
    const slideshowView = document.getElementById('slideshowView'+product_id);
    const toggleButton = document.getElementById('toggleViewButton'+product_id);

    if (currentView === 'gallery') {
        galleryView.style.display = 'none';
        slideshowView.classList.remove('d-none');
        toggleButton.textContent = 'Gallery';
        currentView = 'slideshow';
    } else {
        galleryView.style.display = 'block';
        slideshowView.classList.add('d-none');
        toggleButton.textContent = 'Slideshow';
        currentView = 'gallery';
    }
}

// Open the slideshow at the clicked image index
// Open the slideshow at the clicked image index
function openSlideshow(index,product_id) {
  console.log(11111111)
  console.log(product_id)
    toggleView(product_id); // Switch to slideshow view

    // Bootstrap's carousel instance
    const carousel = document.getElementById('imageCarousel'+product_id);
    const carouselInstance = new bootstrap.Carousel(carousel);

    // Go to the specified slide index using Bootstrap's built-in function
    carouselInstance.to(index);
}


// Switching tabs to show the correct image grid
// document.querySelectorAll('.nav-link').forEach(function (tabLink) {
//     tabLink.addEventListener('click', function (e) {
//         e.preventDefault();
//         document.querySelectorAll('.tab-pane').forEach(function (pane) {
//             pane.classList.remove('show', 'active');
//         });
//         const targetGrid = document.querySelector(this.getAttribute('href'));
//         targetGrid.classList.add('show', 'active');
//     });
// });

// Dynamically open modal and update the carousel
// Dynamically open modal and update the carousel
document.querySelectorAll('.thumbnail').forEach(function (thumbnail, index) {
    thumbnail.addEventListener('click', function (e) {
        e.preventDefault();

        // Get the product ID from the clicked thumbnail
        const productId = this.getAttribute('data-product-id');

        // Open the modal by adding the 'show' class (Bootstrap 4 behavior)
        const modal = document.getElementById(`imageGalleryModal${productId}`);
        modal.classList.add('show');
        modal.style.display = 'block';
        modal.setAttribute('aria-hidden', 'false');
        modal.setAttribute('aria-modal', 'true');

        // Open the clicked image in the slideshow
        openSlideshow(index,productId);
    });
});

// Close the modal
document.querySelectorAll('.close').forEach(function (closeButton) {
    closeButton.addEventListener('click', function () {
        const modal = closeButton.closest('.modal');
        modal.classList.remove('show');
        modal.style.display = 'none';
        modal.setAttribute('aria-hidden', 'true');
    });
});

</script>


<script>
  document.addEventListener('DOMContentLoaded', function() {
  var offersSection = document.querySelector('.offer-box.more');
  var radioButtons = document.querySelector('.radio-buttons');
  
  offersSection.addEventListener('mouseenter', function() {
    radioButtons.style.display = 'block'; // Show the radio buttons on hover
  });

  offersSection.addEventListener('mouseleave', function() {
    radioButtons.style.display = 'none'; // Hide the radio buttons when not hovering
  });
});


  
</script>

<script>

    // Populate carousel with images based on the active tab
    function populateCarousel(galleryId, carouselImagesId, clickedImage) {

        
        console.log("poppppppppppp")
        console.log(galleryId)
        console.log(carouselImagesId)
        console.log(clickedImage)
        console.log("=enenennene")
        const activeTab = document.querySelector(`#${galleryId}.tab-pane.active`);
        const images = activeTab.querySelectorAll('.gallery img');
        console.log("==ala imageeeg")
        console.log(images)
        carouselImagesId = "carouselImages"+galleryId.split("-")[0].split("tab")[1]
        const carouselImagesContainer = document.getElementById(carouselImagesId);
        carouselImagesContainer.innerHTML = ''; // Clear previous images



        
        images.forEach((img, index) => {
            const carouselItem = document.createElement('div');
            console.log("==indndndnndnd")
            console.log(carouselItem)
            carouselItem.className = 'carousel-item' + (img.src === clickedImage.src ? ' active' : '');
            carouselItem.innerHTML = `<img src="${img.src}" class="d-block w-100" alt="Image ${index + 1}">`;
            carouselImagesContainer.appendChild(carouselItem);
        });

        if ($(carouselImagesContainer).data('bs.carousel')) {
        $(carouselImagesContainer).carousel('dispose'); // Dispose if already initialized
    }
    $(carouselImagesContainer).carousel(); // Reinitialize carousel
    }

    // Toggle between gallery and slideshow views
    function toggleView(galleryId, carouselId, buttonId, clickedImage) {
        console.log(galleryId)
        console.log(carouselId)
        console.log(buttonId)
        console.log(clickedImage)
        carouselId = "carousel"+galleryId.split("-")[0].split("tab")[1]
        const gallery = document.querySelector(`#${galleryId}.tab-pane.active .gallery`);
        const carousel = document.getElementById(carouselId);
        const isGalleryVisible = !gallery.classList.contains('hidden');

        // If gallery is visible, switch to slideshow
        if (isGalleryVisible) {
            populateCarousel(galleryId, carouselId.replace('carousel', 'carouselImages'), clickedImage);
            gallery.classList.add('hidden'); // Hide gallery
            carousel.classList.remove('hidden'); // Show carousel
            document.getElementById(buttonId).textContent = 'Switch to Gallery'; // Update button text
        } else { // Otherwise, switch to gallery
            gallery.classList.remove('hidden'); // Show gallery
            carousel.classList.add('hidden'); // Hide carousel
            document.getElementById(buttonId).textContent = 'Switch to Slideshow'; // Update button text
        }
    }

    // Setup event listeners for modal open buttons
    document.querySelectorAll('.open-modal').forEach(button => {
        button.addEventListener('click', function () {
            const modalId = this.getAttribute('data-modal-target');
            const modal = new bootstrap.Modal(document.querySelector(modalId));
            modal.show(); // Show the modal

            // Setup toggle button handlers
            const toggleButtons = document.querySelectorAll(`${modalId} .toggle-button`);
            toggleButtons.forEach((button) => {
                const tabId = button.closest('.tab-pane').id;
                console.log("==tatatatat")
                console.log(tabId)
                const carouselId = `carousel${tabId.charAt(3)}`; // Get the carousel id
                button.addEventListener('click', function () {
                    const clickedImage = button.closest('.tab-pane').querySelector('.gallery img'); // Get the first image if none is initially active
                    toggleView(tabId, carouselId, this.id, clickedImage); // Pass the clicked image
                });
            });

            // Add click event for images to show in carousel
            const images = modal.querySelectorAll('.gallery img');
            images.forEach((image) => {
                image.addEventListener('click', function () {
                    const activeTabId = button.closest('.tab-pane').id;
                    const carouselId = `carousel${activeTabId.charAt(3)}`; // Get carousel id
                    toggleView(activeTabId, carouselId, null, this); // Pass clicked image
                });
            });
        });
    });

    // Close modal when the close button is clicked
document.querySelectorAll('.close-button').forEach(button => {
button.addEventListener('click', function () {
    this.closest('.modal').style.display = 'none'; // Hide the modal
});
});


    // Handle tab changes for modals
    document.querySelectorAll('.nav-tabs a').forEach(tab => {
        tab.addEventListener('click', function (e) {
            e.preventDefault();
            this.classList.add('active');
            $(this).tab('show');
        });
    });

</script>

<style>

.hidden {
        display: none;
    }

    .gallery img {
        max-width: 150px;
        margin-right: 10px;
        cursor: pointer; /* Pointer cursor for images */
    }

    .carousel-item img {
        max-width: 100%;
    }

</style>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>