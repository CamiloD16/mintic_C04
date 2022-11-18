import { useNavigate } from 'react-router-dom'

const DiferentsCategories = () => {
  return (
    <div className='py-32'>
    <h1 className='text-center text-xl mb-16'>Diferentes categorías para escoger</h1>
    <div className='grid sm:grid-cols-2 lg:grid-cols-3 w-fit mx-auto gap-5 justify-center content-center'>
      <ItemCategory
        title="Aventura"
      />
      <ItemCategory
        title="Deporte"
      />
      <ItemCategory
        title="Ejercicios"
      />
      <ItemCategory
        title="Recreación"
      />
      <ItemCategory
        title="Tours"
      />
      <ItemCategory
        title="Viajes"
      />
    </div>
  </div>
  )
}

export const ItemCategory = (props) => {

  const removeAccents = (str) => {
    return str.normalize('NFD').replace(/[\u0300-\u036f]/g,"");
  }

  const navigate = useNavigate()
  const redirection = () => navigate(removeAccents(props.title))

  return(
    <button onClick={redirection} className='shadow-lg py-6 px-28 rounded-lg w-full cursor-pointer'>{props.title}</button>
  )
}
export default DiferentsCategories