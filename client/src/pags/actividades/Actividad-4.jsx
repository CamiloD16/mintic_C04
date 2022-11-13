import GetActividad from '../../hooks/GetActividad'


const Actividad04 = () => {
  const limits = {
    startLimit : 3,
    endLimit : 4
  }
  return(
    <GetActividad
      limits={limits}
    />
  )
}

export default Actividad04