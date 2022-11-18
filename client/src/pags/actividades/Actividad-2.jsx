import { ConsumActivity } from '../../components/Activity'


const Actividad02 = () => {
  const limits = {
    startLimit : 1,
    endLimit : 2
  }
  return(
    <ConsumActivity
      limits={limits}
    />
  )
}

export default Actividad02