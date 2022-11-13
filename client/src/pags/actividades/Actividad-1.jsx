import GetActividad from '../../hooks/GetActividad'


const Actividad01 = () => {
  const limits = {
    startLimit : 0,
    endLimit : 1
  }
  return(
    <GetActividad
      limits={limits}
    />
  )
}

export default Actividad01