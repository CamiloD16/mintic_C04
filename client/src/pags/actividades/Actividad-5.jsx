import GetActividad from '../../hooks/GetActividad'


const Actividad05 = () => {
  const limits = {
    startLimit : 4,
    endLimit : 5
  }
  return(
    <GetActividad
      limits={limits}
    />
  )
}

export default Actividad05