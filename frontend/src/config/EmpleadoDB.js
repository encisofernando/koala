import axios from 'axios';
import { getIdBaseFromToken } from '../auth/auth'

const API_URL = 'http://localhost:3000/empleados'; // URL ajustada para Empleados

// Obtener todos los empleados
export const getAllEmpleados = async () => {
    try {

        const token = localStorage.getItem('token'); // Obtiene el token del localStorage
        const idBase = getIdBaseFromToken(); // Obtiene el idBase del token

        const response = await axios.get(`${API_URL}`, {
            headers: {
                'Authorization': `Bearer ${token}`,
            },
            params: {
                idBase // Envía idBase como un parámetro de consulta
            }
        });

        console.log("Respuesta del backend:", response.data); // Agregado para ver los datos
        return response.data; // Retorna los datos de la respuesta
    } catch (error) {
        throw error; // Lanza el error para manejarlo en el componente
    }
};

// Obtener un empleado por ID
export const getEmpleadoById = async (id) => {
    try {
        const token = localStorage.getItem('token'); // Obtiene el token del localStorage
        const idBase = getIdBaseFromToken(); // Obtiene el idBase del token

        const response = await axios.get(`${API_URL}/${id}`, {
            headers: {
                'Authorization': `Bearer ${token}`,
            },
            params: {
                idBase // Envía idBase como un parámetro de consulta
            }
        });

        console.log("Empleado obtenido:", response.data); // Agregado para ver los datos
        return response.data; // Retorna los datos del empleado
    } catch (error) {
        throw error; // Lanza el error para manejarlo en el componente
    }
};

// Crear un nuevo empleado
export const createEmpleado = async (formData) => {
    try {
        const token = localStorage.getItem('token'); // Obtiene el token del localStorage
        if (!token) {
            throw new Error('No se encontró el token de autenticación'); // Verificación del token
        }
        
        const idBase = getIdBaseFromToken(); // Obtiene el idBase del token
        
        // Agregar idBase a FormData
        formData.append('idBase', idBase);

        const response = await axios.post(API_URL, formData, {
            headers: {
                'Authorization': `Bearer ${token}`,
                'Content-Type': 'multipart/form-data' // Asegúrate de establecer el tipo de contenido correcto
            }
        });
        console.log("Empleado creado:", response.data); // Agregado para ver los datos
        return response.data; // Retorna el empleado creado
    } catch (error) {
        console.error('Error al guardar empleado:', error.response ? error.response.data : error.message);
        throw error; // Lanza el error para manejarlo en el componente
    }
};

// Actualizar un empleado
export const updateEmpleado = async (id, empleadoActualizado) => {
    try {
        const token = localStorage.getItem('token'); // Obtiene el token del localStorage
        const idBase = getIdBaseFromToken(); // Obtiene el idBase del token

        const response = await axios.put(`${API_URL}/${id}`, empleadoActualizado, {
            headers: {
                'Authorization': `Bearer ${token}`,
            },
            params: {
                idBase // Envía idBase como un parámetro de consulta
            }
        });

        console.log("Empleado actualizado:", response.data);
        return response.data;
    } catch (error) {
        console.error("Error al actualizar el empleado:", error.message || error.stack);

        throw error; // Lanza el error para manejarlo en el componente
    }
};

// Eliminar un empleado
export const deleteEmpleado = async (id) => {
    try {
        const response = await axios.delete(`${API_URL}/${id}`);
        console.log("Empleado eliminado:", response.data); // Agregado para ver los datos
        return response.data; // Retorna un mensaje de éxito
    } catch (error) {
        throw error; // Lanza el error para manejarlo en el componente
    }
};
