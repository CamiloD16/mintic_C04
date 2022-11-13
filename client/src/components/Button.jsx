import React from 'react'

const Button = (props) => {
  return (
    <div className='bg-sky-800 text-white py-3 px-20 text-center w-fit rounded-lg font-semibold cursor-pointer'>{props.title}</div>
  )
}

export default Button