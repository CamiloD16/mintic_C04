import Template from './components/Template'
import Home from './pags/Home'
import Login from './pags/Login'

import './tailwind.css'

import { BrowserRouter, Routes, Route } from "react-router-dom";

function App() {

  return (
    <div className="App">
      <BrowserRouter>
      <Routes>
        <Route path='/' element={<Template />}>
          <Route path="login" element={<Login />} />
          <Route path="home" element={<Home/>} />
        </Route>
      </Routes>
      </BrowserRouter>
    </div>
  )
}

export default App
