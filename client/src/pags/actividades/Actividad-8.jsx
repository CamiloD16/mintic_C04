import GetActividad from '../../hooks/GetActividad'


const Actividad08 = () => {
  const limits = {
    startLimit : 7,
    endLimit : 8
  }
  return(
    <GetActividad
      limits={limits}
    />
  )
}

export default Actividad08