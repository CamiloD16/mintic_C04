import React from 'react'
import ArrowForwardIcon from '@mui/icons-material/ArrowForward';

import { Link } from 'react-router-dom';

const CardActivity = (props) => {

  return(
        <div className='max-w-sm h-fit' key={props.id}>
          <Link to={`/actividad-${props.id}`}>
            <img className='w-full max-h-80' src={props.imagen_actividad} alt="people activity" />
            <div className='bg-white px-4 rounded-b-lg flex flex-col justify-between min-h-[250px]'>
              <h1 className='pt-6 pb-8 font-semibold'>{props.nombre_actividad}</h1>
              <p>{props.descripcion_actividad}</p>
              <div className='flex pt-8 pb-5 gap-5'>
                <h3 className='font-semibold cursor-pointer'>Ver más detalles</h3>
                <ArrowForwardIcon/>
              </div>
            </div>
          </Link>
        </div>
  )
}

export default CardActivity