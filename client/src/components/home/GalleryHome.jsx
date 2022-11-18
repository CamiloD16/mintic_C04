const GalleryHome = () => {

  const imgGallery01 = "https://images.pexels.com/photos/3214958/pexels-photo-3214958.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  const imgGallery02 = "https://images.pexels.com/photos/1819657/pexels-photo-1819657.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  const imgGallery03 = "https://images.pexels.com/photos/3225529/pexels-photo-3225529.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  const imgGallery04 = "https://images.pexels.com/photos/3250362/pexels-photo-3250362.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  const imgGallery05 = "https://images.pexels.com/photos/2918010/pexels-photo-2918010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  const imgGallery06 = "https://images.pexels.com/photos/4172854/pexels-photo-4172854.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"

  const listGallery = [imgGallery01,imgGallery02,imgGallery03,imgGallery04,imgGallery05,imgGallery06]

  return (
    <div className='px-4  pb-20 mt-20 grid sm:grid-cols-2 md:grid-cols-3 max-w-6xl gap-4 mx-auto' >
      {listGallery.map((img) => {
        return(
          <img className="rounded-lg w-full sm:max-w-lg h-[360px]" src={img} alt="paisaje" key={listGallery.indexOf(img)} />
        )
      })}
    </div>
  )
}

export default GalleryHome