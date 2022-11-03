import HomeIcon from '@mui/icons-material/Home';
import HikingIcon from '@mui/icons-material/Hiking';
import PersonIcon from '@mui/icons-material/Person';
import MenuIcon from '@mui/icons-material/Menu';

import { Link } from 'react-router-dom';

const Navbar = () => {
  return (
    <div className="navbar bg-sky-800 flex justify-between py-4 px-4 sm:px-20">
      <h1 className="text-white text-2xl">Acconam</h1>
      <div className='text-white flex items-center sm:hidden'><MenuIcon/></div>

      <ul className="sm:flex items-center text-white gap-x-12 hidden ">
        <li> <Link to='/home' tittle='button'><HomeIcon/></Link> </li>
        <li> <Link to='/' tittle='button'><HikingIcon/></Link> </li>
        <li> <Link to='/login' tittle='button'><PersonIcon/></Link> </li>
      </ul>
    </div>
  )
}

export default Navbar