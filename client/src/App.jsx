import Template from './components/Template'
import Home from './pags/Home'
import Login from './pags/Login'
import Categories from './pags/Categories'
import PrivateRoute from './utils/PrivateRoutes'
import { AuthProvider } from './context/AuthContext'

import './tailwind.css'

import { BrowserRouter as Router, Routes, Route } from "react-router-dom";

function App() {
  return (
    <div className="App bg-gray-100">
      <Router>
      <AuthProvider>
        <Routes>
          <Route path='/' element={<Template />}>
            <Route path="login" element={<Login />} />
          </Route>
          <Route element={<PrivateRoute/>}>
            <Route path='/' element={<Template />}>
              <Route index element={<Home/>} />
              <Route path='categories' element={<Categories/>} />
            </Route>
          </Route>
        </Routes>
        </AuthProvider>
      </Router>
    </div>
  )
}

export default App
