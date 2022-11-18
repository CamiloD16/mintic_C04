import React from 'react'
import CardActivity from '../CardActivity';
import Button from '../Button';
import { useNavigate } from 'react-router-dom'
import GetApis from '../../hooks/GetApis';

const ActividadesHome = () => {

  const navigate = useNavigate()
  const redirecciona = () => navigate('/actividades')

  const url = "http://127.0.0.1:8000/api/actividades/actividades/?format=json"
  const { Data } = GetApis(url);

  return (
    <div>
    <h1 className='text-center text-xl mb-16'>Actividades</h1>
    <div className='flex gap-6 justify-center mb-10 flex-wrap'>
      {Data.slice(0,3).map((data) => {
        return(
          <div key={data.id}>
            <CardActivity
              id={data.id}
              imagen_actividad={data.imagen_actividad}
              nombre_actividad={data.nombre_actividad}
              descripcion_actividad={data.descripcion_actividad}
            />
          </div>
        )
      })}
    </div>
    <div className='mx-auto bg-red-300 w-fit'>
      <Button
      title="Ver más"
      type="button"
      onclick={redirecciona}
      />
    </div>
  </div>
  )
}

export default ActividadesHome