import GetActividad from '../../hooks/GetActividad'


const Actividad07 = () => {
  const limits = {
    startLimit : 6,
    endLimit : 7
  }
  return(
    <GetActividad
      limits={limits}
    />
  )
}

export default Actividad07