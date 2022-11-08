import Template from './components/Template'
import Home from './pags/Home'
import Login from './pags/Login'
import PrivateRoute from './utils/PrivateRoutes'

import './tailwind.css'

import { BrowserRouter as Router, Routes, Route } from "react-router-dom";

function App() {
  return (
    <div className="App">
      <Router>
        <Routes>
          <Route path='/' element={<Template />}>
            <Route path="login" element={<Login />} />
          </Route>
          <Route element={<PrivateRoute/>}>
            <Route path='/' element={<Template />}>
              <Route path="home" element={<Home/>} />
            </Route>
          </Route>
        </Routes>
      </Router>
    </div>
  )
}

export default App
