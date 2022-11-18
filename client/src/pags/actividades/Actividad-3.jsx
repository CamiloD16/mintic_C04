import { ConsumActivity } from '../../components/Activity'


const Actividad03 = () => {
  const limits = {
    startLimit : 2,
    endLimit : 3
  }
  return(
    <ConsumActivity
      limits={limits}
    />
  )
}

export default Actividad03