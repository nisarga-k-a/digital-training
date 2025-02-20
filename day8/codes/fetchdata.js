const response = fetch('https://jsonplaceholder.typicode.com/users')
response
.then(response=>console.log(response.status))//if it is resolved
.catch(err=>console.log(err))
.finally(()=>console.log('Promise executed'))
