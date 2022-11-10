import { useState, useEffect } from 'react'
import axios from "axios";


const GetApis = (url) => {
  const [Data, setData] = useState([]);

  const getData = async () => {
    try {
      await axios.get(url)
        .then(result => {
          setData(result.data)
        })
    } catch (error) {
      console.log(error)
    }
  }
  useEffect(() => {
    getData();
  }, [])

  return {
    Data,
    url
  }
}

export default GetApis
