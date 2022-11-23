import { Link } from 'react-router-dom'

const LoginRegister = (props) => {
  return (
    <div className="h-screen flex justify-center items-center">
    <form  onSubmit={props.formSubmit} className="max-w-lg shadow-md flex flex-col justify-center gap-y-10 px-4 sm:px-16 py-24">
      <div>
        <h2 className="mb-2">Usuario</h2>
        <input type="text" className="p-2 w-full" name="username" id="user" placeholder="Ingresa tu usuario" />
      </div>
      <div>
        <h2 className="mb-2">Contraseña</h2>
        <input type="password" className="p-2 w-full" name="password" id="password" placeholder="Ingresa tu constraseña" />
      </div>
      <div>
        <button type="submit" className="bg-sky-800 text-white px-16 sm:px-24 py-2 w-full mb-2">{props.buttonText}</button>
        <div className='flex justify-between'>
          <p>{props.question}</p>
          <Link to={props.route}>
            <p className='text-sky-800'>{props.suggestion}</p>
          </Link>
        </div>
      </div>
    </form>
  </div>
  )
}

export default LoginRegister