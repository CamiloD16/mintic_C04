import GetActividad from '../../hooks/GetActividad'


const Actividad03 = () => {
  const limits = {
    startLimit : 2,
    endLimit : 3
  }
  return(
    <GetActividad
      limits={limits}
    />
  )
}

export default Actividad03