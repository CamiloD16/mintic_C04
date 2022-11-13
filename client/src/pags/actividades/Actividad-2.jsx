import GetActividad from '../../hooks/GetActividad'


const Actividad02 = () => {
  const limits = {
    startLimit : 1,
    endLimit : 2
  }
  return(
    <GetActividad
      limits={limits}
    />
  )
}

export default Actividad02