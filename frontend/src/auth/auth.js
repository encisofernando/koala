// auth.js
import { jwtDecode } from 'jwt-decode';

/**
 * Obtener el ID base del token JWT almacenado en localStorage.
 * @returns {string|null} idBase o null si no se encuentra el token.
 */
export const getIdBaseFromToken = () => {
    const token = localStorage.getItem('token'); // Asegúrate de que el token se guarda aquí
    if (token) {
        const decodedToken = jwtDecode(token);
        return decodedToken.idBase; // Asegúrate de que 'idBase' esté en el payload del token
    }
    return null; // Retorna null si no hay token
};

/**
 * Verifica si hay un token JWT válido en el localStorage.
 * @returns {boolean} true si el token es válido, false en caso contrario.
 */
export const isTokenValid = () => {
    const token = localStorage.getItem('token');
    if (!token) return false;

    const decodedToken = jwtDecode(token);
    const now = Date.now() / 1000; // Tiempo actual en segundos
    console.log('Token decodificado:', decodedToken);
    return decodedToken.exp > now; // Verifica si el token no ha expirado
};

/**
 * Obtener el userId del token JWT almacenado en localStorage.
 * @returns {string|null} userId o null si no se encuentra el token.
 */
export const getUserIdFromToken = () => {
    const token = localStorage.getItem('token'); 
    if (token) {
        const decodedToken = jwtDecode(token);
        return decodedToken.idUsuario || null; // Asegúrate de que 'userId' esté en el payload del token
    }
    return null; 
};

/**
 * Obtener el idEmpleado del token JWT almacenado en localStorage.
 * @returns {string|null} idEmpleado o null si no se encuentra el token.
 */
export const getIdEmpleadoFromToken = () => {
    const token = localStorage.getItem('token'); 
    if (token) {
        const decodedToken = jwtDecode(token);
        return decodedToken.idEmpleado || null; // Asegúrate de que 'idEmpleado' esté en el payload del token
    }
    return null; 
};

/**
 * Obtener el idRol del token JWT almacenado en localStorage.
 * @returns {string|null} idRol o null si no se encuentra el token.
 */
export const getIdRolFromToken = () => {
    const token = localStorage.getItem('token'); 
    if (token) {
        const decodedToken = jwtDecode(token);
        return decodedToken.idRol || null; // Asegúrate de que 'idRol' esté en el payload del token
    }
    return null; 
};
