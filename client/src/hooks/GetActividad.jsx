import Activity from "../components/Activity";
import Comments from "../components/Comments";
import GetApis from "./GetApis";


const GetActividad = props => {
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


export default GetActividad