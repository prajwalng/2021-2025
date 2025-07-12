// JavaScript for both index.html and add-item.html

// Function to add an item to the cart
function addToCart(itemName) {
    const cartItemsElement = document.getElementById('cart-items');
    const li = document.createElement('li');
    li.textContent = itemName;
    cartItemsElement.appendChild(li);
}

// Function to save a new item
function saveNewItem(event) {
    event.preventDefault();

    const itemName = document.getElementById('itemName').value;
    const itemImage = document.getElementById('itemImage').value;

    // Save the item data (you may want to send it to the server)

    // Redirect back to the main page (index.html) or perform other actions
    window.location.href = 'index.html';
}
