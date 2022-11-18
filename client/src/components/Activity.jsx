import Button from './Button'
import Comments from "../components/Comments";
import GetApis from '../hooks/GetApis';

const Activity = (props) => {
  return (
    <div className='p-4'>
      <div className="md:flex max-w-5xl mx-auto mt-16">
        <img className='w-full md:max-w-md max-h-[30rem] w-full' src={props.image} alt="aventura" />
        <div className='max-w-xl md:px-16 py-6 flex flex-col justify-center items'>
          <h1 className="mb-12 font-semibold text-xl capitalize">{props.title}</h1>
          <p className='mb-12'>{props.description}</p>
          <h3 className='mb-7 font-semibold text-xl'>Valoración: 4/5</h3>
          <Button
            title="Inscribirse"
            type="button"
          />
        </div>
      </div>
    </div>
  )
}

export const ConsumActivity = (props) => {

  const url = "http://127.0.0.1:8000/api/actividades/actividades/?format=json"
  const { Data } = GetApis(url);

  const limits = props.limits

  return (
    <>
    {Data.slice((limits.startLimit),(limits.endLimit)).map(data => {
      return(
      <div className="container mx-auto" key={data.id}>
        <Activity
          id={data.id}
          title={data.nombre_actividad}
          description={data.descripcion_actividad}
          image={data.imagen_actividad}
        />
        <Comments/>
      </div>
      )})}
    </>
  )
}

export default Activity