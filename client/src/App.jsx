import Template from './components/Template'
import Home from './pags/Home'
import Login from './pags/Login'
import Actividades from './pags/Actividades'
import PrivateRoute from './utils/PrivateRoutes'
import { AuthProvider } from './context/AuthContext'
import Actividad01 from './pags/actividades/Actividad-1'
import Actividad02 from './pags/actividades/Actividad-2'
import Actividad03 from './pags/actividades/Actividad-3'
import Actividad04 from './pags/actividades/Actividad-4'
import Actividad05 from './pags/actividades/Actividad-5'
import Actividad06 from './pags/actividades/Actividad-6'
import Actividad07 from './pags/actividades/Actividad-7'
import Actividad08 from './pags/actividades/Actividad-8'
import Actividad09 from './pags/actividades/Actividad-9'
import Actividad010 from './pags/actividades/Actividad-10'
import Actividad011 from './pags/actividades/Actividad-11'
import Actividad012 from './pags/actividades/Actividad-12'

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
              <Route path='actividades' element={<Actividades/>} />
              <Route path='actividad-1' element={<Actividad01/>} />
              <Route path='actividad-2' element={<Actividad02/>} />
              <Route path='actividad-3' element={<Actividad03/>} />
              <Route path='actividad-4' element={<Actividad04/>} />
              <Route path='actividad-5' element={<Actividad05/>} />
              <Route path='actividad-6' element={<Actividad06/>} />
              <Route path='actividad-7' element={<Actividad07/>} />
              <Route path='actividad-8' element={<Actividad08/>} />
              <Route path='actividad-9' element={<Actividad09/>} />
              <Route path='actividad-10' element={<Actividad010/>} />
              <Route path='actividad-11' element={<Actividad011/>} />
              <Route path='actividad-12' element={<Actividad012/>} />
            </Route>
          </Route>
        </Routes>
        </AuthProvider>
      </Router>
    </div>
  )
}

export default App
