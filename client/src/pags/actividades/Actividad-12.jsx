import GetActividad from '../../hooks/GetActividad'


const Actividad12 = () => {
  const limits = {
    startLimit : 11,
    endLimit : 12
  }
  return(
    <GetActividad
      limits={limits}
    />
  )
}

export default Actividad12