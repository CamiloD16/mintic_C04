import Button from '../Button';
import { useNavigate } from 'react-router-dom'

const Header = () => {

  const imgPaisaje01 = "https://images.pexels.com/photos/1020016/pexels-photo-1020016.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  const imgPaisaje02 = "https://images.pexels.com/photos/3283121/pexels-photo-3283121.jpeg?auto=compress&cs=tinysrgb&w=400"

  const navigate = useNavigate()
  const redirecciona = () => navigate('/actividades')

  return (
    <div className='xl:flex py-10 px-4 md:py-20 md:px-14 gap-4 justify-center'>
      <div className='mb-10 xl:max-w-lg'>
        <h1 className='text-5xl mb-4'>Disfruta de actividades con amigos al menor precio</h1>
        <p className='text-2xl mb-9 max-w-md'>Explora todo tipo de actividades para divertirse.</p>
        <Button
          onclick={redirecciona}
          type="button"
          title="Explorar"
        />
      </div>
      <div className='md:flex gap-3'>
        <img className='w-full md:max-w-xs max-h-[391px] mb-5' src={imgPaisaje01} alt="paisaje" />
        <img className='w-full md:max-w-xs max-h-[483px]' src={imgPaisaje02} alt="paisaje" />
      </div>
    </div>
  )
}

export default Header