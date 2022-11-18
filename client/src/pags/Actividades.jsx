import React from 'react'
import CardActivity from '../components/CardActivity'
import GetApis from '../hooks/GetApis'

const Actividades = () => {

  const url = "http://127.0.0.1:8000/api/actividades/actividades/?format=json"
  const { Data } = GetApis(url);

  return (
    <main className='px-4 pb-4 container mx-auto'>
      <section className='w-fit mx-auto'>
        <h1 className='font-semibold text-2xl py-10 lg:py-20'>Actividades</h1>
        <div className='grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6'>
        {Data.map((data) => {
          return(
            <div key={data.id}>
              <CardActivity
                id={data.id}
                imagen_actividad={data.imagen_actividad}
                nombre_actividad={data.nombre_actividad}
                descripcion_actividad={data.descripcion_actividad}
              />
            </div>
          )
        })}
        </div>
      </section>
    </main>
  )
}

export default Actividades