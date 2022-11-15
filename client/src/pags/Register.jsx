import React from 'react'

const Register = () => {

  const initialState = {id:0,username:"",password:""}
  const [register, setRegister] = useState(initialState)

  const url = ""

  const registerUser= async (newUser) => {
    return await fetch(url, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({
        "username": String(newUser.register),
      })
    })
  }

  const handleSubmit = async (e) => {
    e.preventDefault();
    try{
      const res = await registerUser(register)
      const data = await res.json()
      console.log(data)
    }catch(error){
      console.log(error)
    }
    window.location.reload(false);
  }

  const handleInputChange = (e) => setRegister({[e.target.name]:e.target.value})

  return (
    <div className="h-screen flex justify-center items-center">
      <form  onSubmit={handleSubmit} className="max-w-lg shadow-md flex flex-col justify-center gap-y-10 px-4 sm:px-16 py-24">
        <div>
          <h2 className="mb-2">Usuario</h2>
          <input onChange={handleInputChange} type="text" className="p-2 w-full" name="username" id="user" placeholder="Ingresa tu usuario"/>
        </div>
        <div>
          <h2 className="mb-2">Contraseña</h2>
          <input type="password" className="p-2 w-full" name="password" id="password" placeholder="Ingresa tu constraseña" />
        </div>
        <div>
          <button type="submit" className="bg-sky-800 text-white px-16 sm:px-24 py-2 w-full mb-2">Registrarse</button>
          <Link to="/login">
            <button type="button" className="bg-sky-800 text-white px-16 sm:px-24 py-2 w-full mb-2">Iniciar Sesión</button>
          </Link>
        </div>
      </form>
    </div>
  )
}

export default Register