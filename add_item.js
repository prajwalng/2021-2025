// JavaScript for add-item.html

// Function to save a new item
function saveNewItem(event) {
    event.preventDefault();

    const itemName = document.getElementById('itemName').value;
    const itemImage = document.getElementById('itemImage').value;

    // Validate form data
    if (!itemName || !itemImage) {
        alert('Please fill out all fields.');
        return;
    }

    // Assuming you have a function to save the item on the server
    saveItemToServer(itemName, itemImage);

    // Redirect back to the main page (index.html) or perform other actions
    window.location.href = 'index.html';
}

// Function to save the item to the server (you may modify it as needed)
function saveItemToServer(name, image) {
    // Perform server-side operations, such as sending a request to your backend
    // Example using fetch API (replace with your actual endpoint and data structure)
    fetch('your_backend_endpoint', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({
            name: name,
            image: image,
            // Add more fields as needed
        }),
    })
    .then(response => response.json())
    .then(data => {
        console.log('Item saved successfully:', data);
        // Handle the response from the server if needed
    })
    .catch(error => {
        console.error('Error saving item:', error);
        // Handle errors from the server if needed
    });
}
