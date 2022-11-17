import React from 'react'
import StarIcon from '@mui/icons-material/Star';
import FeedbackIcon from '@mui/icons-material/Feedback';
import ThumbUpIcon from '@mui/icons-material/ThumbUp';

const Barra = () => {
  return (
    <div className='bg-sky-800 hidden h-24 sm:flex items-center justify-center gap-5 lg:gap-40 '>
      <ItemsBarra
        texto="Actividades puntuadas"
        icono= {<StarIcon />}
      />
      <ItemsBarra
       texto="Comentarios por actividad"
       icono={<FeedbackIcon/>}
      />
      <ItemsBarra
       texto="Reseñas actualizadas"
       icono={<ThumbUpIcon/>}
      />
    </div>
  )
}

export const ItemsBarra = (props) => {
  return(
    <div className='flex w-fit gap-2 items-center justify-center'>
      <h4 className='text-yellow-500 flex justify-center items-center'>
        {props.icono}
      </h4>
      <h5 className='text-white'>{props.texto}</h5>
    </div>
  )
}

export default Barra