import GetActividad from '../../hooks/GetActividad'


const Actividad11 = () => {
  const limits = {
    startLimit : 10,
    endLimit : 11
  }
  return(
    <GetActividad
      limits={limits}
    />
  )
}

export default Actividad11