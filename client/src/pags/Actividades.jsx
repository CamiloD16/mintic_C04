import React from 'react'
import CardActivity from '../components/CardActivity'

const Actividades = () => {
  return (
    <main className='px-4 pb-4 container mx-auto'>
      <section className='w-fit mx-auto'>
        <h1 className='font-semibold text-2xl py-10 lg:py-20'>Actividades</h1>
        <div className='grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6'>
          <CardActivity/>
        </div>
      </section>
    </main>
  )
}

export default Actividades