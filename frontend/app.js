fetch('/api/read.php')
    .then(response => response.json())
    .then(data => {
        const container = document.getElementById('data');
        container.innerHTML = JSON.stringify(data);
    })
    .catch(err => console.error('Error:', err));