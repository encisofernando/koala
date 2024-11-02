import axios from 'axios';


const API_URL = 'http://localhost:3000/roles'; // Asegúrate de que la URL sea correcta

// Obtener todos los roles
export const getAllRoles = async () => {
    try {
        const response = await axios.get(API_URL);
        console.log("Respuesta del backend:", response.data); // Agregado para ver los datos
        return response.data; // Retorna los datos de la respuesta
    } catch (error) {
        throw error; // Lanza el error para manejarlo en el componente
    }
};

