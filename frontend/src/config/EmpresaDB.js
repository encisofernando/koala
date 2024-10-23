import axios from 'axios';

const API_URL = 'http://localhost:3000/empresas'; // Asegúrate de que la URL sea correcta

// Obtener todas las empresas
export const getAllEmpresas = async () => {
    try {
        const response = await axios.get(API_URL);
        console.log("Respuesta del backend:", response.data); // Agregado para ver los datos
        return response.data; // Retorna los datos de la respuesta
    } catch (error) {
        throw error; // Lanza el error para manejarlo en el componente
    }
};

// Obtener una empresa por ID
export const getEmpresaById = async (id) => {
    try {
        const response = await axios.get(`${API_URL}/${id}`);
        console.log("Empresa obtenida:", response.data); // Agregado para ver los datos
        return response.data; // Retorna los datos de la empresa
    } catch (error) {
        throw error; // Lanza el error para manejarlo en el componente
    }
};

// Crear una nueva empresa
export const createEmpresa = async (nuevaEmpresa) => {
    try {
        const response = await axios.post(API_URL, nuevaEmpresa);
        console.log("Empresa creada:", response.data); // Agregado para ver los datos
        return response.data; // Retorna la empresa creada
    } catch (error) {
        console.error('Error al guardar la empresa:', error.response.data);
        throw error; // Lanza el error para manejarlo en el componente
    }
};

// Actualizar una empresa
export const updateEmpresa = async (id, empresaActualizada) => {
    try {
        const response = await axios.put(`${API_URL}/${id}`, empresaActualizada);
        console.log("Empresa actualizada:", response.data);
        return response.data; // Retorna la empresa actualizada
    } catch (error) {
        console.error("Error al actualizar la empresa:", error.response ? error.response.data : error.message);
        throw error; // Lanza el error para manejarlo en el componente
    }
};

// Nota: No hay función para eliminar empresa en este servicio.

