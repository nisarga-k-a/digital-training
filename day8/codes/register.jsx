import { useState } from "react";
import axios from 'axios';
import { useNavigate } from 'react-router-dom';


function Register() {
    const [name, setName] = useState('');
    const [email, setEmail] = useState('');
    const [address, setAddress] = useState('');
    const handleSubmit = async (e) => {
        e.preventDefault();
        if (!name || !email || !address) {
            alert('All fields are required');
        }
        else {
            try {
                const uniqueNo = Date.now();
                const userObject = { id: uniqueNo + '', name, email, address };
                const resp = await axios.post('http://localhost:3000/users', userObject);
                if (resp.status === 201)
                    alert('User created successfully');
            } catch (error) {
                console.log(error);
            }
        }
    }
    return (
        <div>
            <h3 class="text-center p-2 text-bg-secondary" >Registration page</h3>
            <form onSubmit={handleSubmit}>
                <div class="mb-3">
                    <label for="name" class="form-label">Name</label>
                    <input type="text" class="form-control" placeholder="John Doe" onChange={(e) => setName(e.target.value)} >
                    </input>
                </div>
                <div> class="mb-3"
                    <label class="form-label">Email</label>
                    <input type="email" class="form-control" placeholder="John.doe@gmail.com" ></input>
                </div>
                <div class="mb-3">
                    <label class="form-label">Address</label>
                    <input type="text" class="form-control" placeholder="Address here"></input>
                </div>
                <button type="submit" className="btn btn-primary w-100 mt-3">Submit</button>
            </form>
        </div>
    );
}

export default Register;