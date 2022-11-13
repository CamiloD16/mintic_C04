import GetActividad from '../../hooks/GetActividad'


const Actividad10 = () => {
  const limits = {
    startLimit : 9,
    endLimit : 10
  }
  return(
    <GetActividad
      limits={limits}
    />
  )
}

export default Actividad10