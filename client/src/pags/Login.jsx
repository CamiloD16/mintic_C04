import React, {useContext} from 'react'
import AuthContext from '../context/AuthContext'
import { Link } from 'react-router-dom'

const Login = () => {

  let {loginUser} = useContext(AuthContext)

  return (
    <div className="h-screen flex justify-center items-center">
      <form onSubmit={loginUser} className="max-w-lg shadow-md flex flex-col justify-center gap-y-10 px-4 sm:px-16 py-24">
        <div>
          <h2 className="mb-2">Usuario</h2>
          <input type="text" className="p-2 w-full" name="username" id="user" placeholder="Ingresa tu usuario"/>
        </div>
        <div>
          <h2 className="mb-2">Contraseña</h2>
          <input type="password" className="p-2 w-full" name="password" id="password" placeholder="Ingresa tu constraseña" />
        </div>
        <div>
          <button type="submit" className="w-full mb-2 bg-sky-800 text-white px-16 sm:px-24 py-2">Iniciar Sesión</button>
          <Link to="/register">
            <button type="button" className="w-full bg-sky-800 text-white px-16 sm:px-24 py-2">Registrarse</button>
          </Link>
        </div>
      </form>
    </div>
  )
}

export default Login