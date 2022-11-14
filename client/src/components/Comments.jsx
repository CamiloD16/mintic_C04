import React, { useContext } from 'react'
import Button from "./Button"
import AuthContext from '../context/AuthContext'
import GetApis from '../hooks/GetApis'
import GetComments from '../hooks/GetComments'


const Comments = () => {

  let { user } = useContext(AuthContext)

  const url = "http://127.0.0.1:8000/api/comentarios/comentarios/?format=json"

  const { handleSubmit, handleInputChange, comment } = GetComments(url)
  const { Data } = GetApis(url);

  return (
    <div className="max-w-5xl mx-auto p-5">

      <h1 className="mb-5 font-semibold text-xl">Comentarios</h1>
      {Data.map(data => {
        return(
          <>
            <h3 className="mb-3 font-semibold capitalize">{data.usuario_comentario}</h3>
            <p className="mb-5">{data.comentario}</p>
          </>
        )
      })}


      <form onSubmit={handleSubmit}>
        <h1 className='opacity-70'>
          {user &&   <p>Hola <span className='capitalize'>{user.username}</span>, ¿Deseas comentar algo? </p>}
        </h1>
        <input className="mb-5 bg-white w-full p-3 min-h-[100px] outline-none" type="text" name="comment" id="" placeholder="Ingresa un comentario" value={comment.comentario} onChange={handleInputChange} />
        <Button
        title="Comentar"
        type="submit"
        />
      </form>
    </div>
  )
}

export default Comments