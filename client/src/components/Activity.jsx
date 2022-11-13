import Button from './Button'

const Activity = (props) => {
  return (
    <div className='p-4' key={props.id}>
      <div className="flex max-w-5xl mx-auto mt-16">
        <img className='max-w-md max-h-[30rem] w-full' src={props.image} alt="aventura" />
        <div className='max-w-xl px-16 py-6 flex flex-col justify-center items'>
          <h1 className="mb-12 font-semibold text-xl">{props.title}</h1>
          <p className='mb-12'>{props.description}</p>
          <h3 className='mb-7 font-semibold text-xl'>Valoración: 4/5</h3>
          <Button
            title="Inscribirse"
          />
        </div>
      </div>
    </div>
  )
}

export default Activity