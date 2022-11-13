import React from 'react'
import ArrowForwardIcon from '@mui/icons-material/ArrowForward';
import GetApis from '../hooks/GetApis';

import { Link } from 'react-router-dom';

const CardActivity = () => {

  const url = "http://127.0.0.1:8000/api/actividades/actividades/?format=json"
  const { Data } = GetApis(url);

  return(
    <>
    {Data.map((data) => {
      return(
        <div className='max-w-sm h-fit' key={data.id}>
          <img className='w-full max-h-80' src={data.imagen_actividad} alt="people activity" />
          <div className='px-4 rounded-b-lg flex flex-col justify-between min-h-[250px]'>
            <h1 className='pt-6 pb-8 font-semibold'>{data.nombre_actividad}</h1>
            <p>{data.descripcion_actividad}</p>
            <div className='flex pt-8 pb-5 gap-5'>
              <Link to={`/actividad-${data.id}`}>
                 <h3 className='font-semibold cursor-pointer'>Ver más detalles</h3>
              </Link>
              <ArrowForwardIcon/>
            </div>
          </div>
        </div>
      )})}
    </>
  )
}

export default CardActivity