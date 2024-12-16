function fetchData() {
    fetch('http://localhost/backend/api.php')
        .then(response => response.json())
        .then(data => {
            document.getElementById("message").innerText = JSON.stringify(data);
        })
        .catch(error => console.error('Error:', error));
}
