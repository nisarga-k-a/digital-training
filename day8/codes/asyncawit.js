async function fetchData() {
    try {
        const response = await fetch('https://jsonplaceholder.typicode.com/users');
        const data = await response.json();
        console.log(data);

    } catch (error) {
        console.error("Error Ocuured", error);
    }
}

fetchData()