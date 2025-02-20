import { BrowserRouter, Routes, Route } from 'react-router-dom'
import Footer from './components/footer'
import Header from './components/header'
import Home from './components/home'
import About from './components/about'
import Contact from './components/contact'
import Users from './components/users'
import Login from './components/login'
import Product from './components/products'
import ProductDetails from './components/ProductDetails'
import Register from './components/register'

function App() {

  return (
    <BrowserRouter>
      <div className='container'>
        <h1>This is my First App</h1>
        <Header />
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="home" element={<Home />} />
          <Route path="about" element={<About />} />
          <Route path="contact" element={<Contact />} />
          <Route path="users" element={<Users />} />
          <Route path="login" element={<Login />} />
          <Route path="product" element={<Product />} />
          <Route path="products/:id" element={<ProductDetails />} />
          <Route path="register" element={<Register />} />
        </Routes>
        <Footer />
      </div>
    </BrowserRouter>

  )
}

export default App;

