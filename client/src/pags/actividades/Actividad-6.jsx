import GetActividad from '../../hooks/GetActividad'


const Actividad06 = () => {
  const limits = {
    startLimit : 5,
    endLimit : 6
  }
  return(
    <GetActividad
      limits={limits}
    />
  )
}

export default Actividad06