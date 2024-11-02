import axios from 'axios';

const API_URL = 'https://koalacompany.com.ar/api/cajasaperturas'; // Asegúrate de que la URL sea correcta

// Obtener todas las aperturas de caja
export const getAllCajasAperturas = async () => {
    try {
        const response = await axios.get(API_URL);
        console.log("Respuesta del backend:", response.data); // Agregado para ver los datos
        return response.data; // Retorna los datos de la respuesta
    } catch (error) {
        throw error; // Lanza el error para manejarlo en el componente
    }
};

// Obtener una apertura de caja por ID
export const getCajaAperturaById = async (id) => {
    try {
        const response = await axios.get(`${API_URL}/${id}`);
        console.log("Apertura de caja obtenida:", response.data); // Agregado para ver los datos
        return response.data; // Retorna los datos de la apertura de caja
    } catch (error) {
        throw error; // Lanza el error para manejarlo en el componente
    }
};

// Crear una nueva apertura de caja
export const createCajaApertura = async (nuevaCajaApertura) => {
    try {
        const response = await axios.post(API_URL, nuevaCajaApertura);
        console.log("Apertura de caja creada:", response.data); // Agregado para ver los datos
        return response.data; // Retorna la apertura de caja creada
    } catch (error) {
        console.error('Error al guardar apertura de caja:', error.response?.data || error.message);
        throw error; // Lanza el error para manejarlo en el componente
    }
};

// Actualizar una apertura de caja
export const updateCajaApertura = async (id, cajaAperturaActualizada) => {
    try {
        const response = await axios.put(`${API_URL}/${id}`, cajaAperturaActualizada);
        console.log("Apertura de caja actualizada:", response.data);
        return response.data;
    } catch (error) {
        console.error("Error al actualizar la apertura de caja:", error.response ? error.response.data : error.message);
        throw error; // Lanza el error para manejarlo en el componente
    }
};

// Eliminar una apertura de caja
export const deleteCajaApertura = async (id) => {
    try {
        const response = await axios.delete(`${API_URL}/${id}`);
        console.log("Apertura de caja eliminada:", response.data); // Agregado para ver los datos
        return response.data; // Retorna un mensaje de éxito
    } catch (error) {
        throw error; // Lanza el error para manejarlo en el componente
    }
};
