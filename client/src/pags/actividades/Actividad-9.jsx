import GetActividad from '../../hooks/GetActividad'


const Actividad09 = () => {
  const limits = {
    startLimit : 8,
    endLimit : 9
  }
  return(
    <GetActividad
      limits={limits}
    />
  )
}

export default Actividad09