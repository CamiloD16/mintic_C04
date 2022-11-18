import { ConsumActivity } from '../../components/Activity'

const Actividad01 = () => {
  const limits = {
    startLimit : 0,
    endLimit : 1
  }
  return(
    <ConsumActivity
      limits={limits}
    />
  )
}

export default Actividad01