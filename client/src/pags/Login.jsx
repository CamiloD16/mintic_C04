import LoginRegister from '../components/LoginRegister'
import { useContext } from 'react'
import AuthContext from '../context/AuthContext'

const Login = () => {
  let {loginUser} = useContext(AuthContext)
  return (
    <LoginRegister
      formSubmit={loginUser}
      buttonText="Iniciar sesión"
      question="¿Aún no estás registrado?"
      suggestion="Regístrate"
      route="/Register"
    />
  )
}

export default Login