import React, {useContext} from 'react';
import AuthContext from '../context/AuthContext';

import HomeIcon from '@mui/icons-material/Home';
import HikingIcon from '@mui/icons-material/Hiking';
import PersonIcon from '@mui/icons-material/Person';
import ExitToAppIcon from '@mui/icons-material/ExitToApp';

import { Link } from 'react-router-dom';

const Navbar = () => {

  let {user, logoutUser} = useContext(AuthContext)

  return (
    <>
    <nav className="navbar bg-sky-800 flex justify-between py-4 px-4 sm:px-20">
      <Link to='/'><h1 className="text-white text-2xl cursor-pointer">Acconam</h1> </Link>
      <ul className="flex items-center text-white gap-4 sm:gap-x-12">
        <li> <Link to='/' tittle='button'><HomeIcon/></Link> </li>
        <li> <Link to='/actividades' tittle='button'><HikingIcon/></Link> </li>
        {
          user ? (
            <li> <Link onClick={logoutUser} to='/login' tittle='button'><ExitToAppIcon/></Link></li>
          ) : (
            <li> <Link to='/login' tittle='button'><PersonIcon/></Link> </li>
          )
        }
      </ul>
    </nav>
    </>
  )
}

export default Navbar