import LoginRegister from '../components/LoginRegister'
import AuthContext from '../context/AuthContext'
import { useContext } from 'react'

const Register = () => {
  let {registerUser} = useContext(AuthContext)
  return (
    <LoginRegister
      formSubmit={registerUser}
      buttonText="Regístrate"
      question="¿Ya tienes una cuenta?"
      suggestion="Inicia sesión"
      route="/login"
    />
  )
}

export default Register