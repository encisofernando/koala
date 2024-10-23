// Usuario.js
const db = require('../config/db');
const bcrypt = require('bcrypt');

// Modelo para Usuarios
const Usuario = {
    // Obtener usuario por ID
    getById: async (idUsuario) => {
        return new Promise((resolve, reject) => {
            db.query('SELECT * FROM Usuarios WHERE idUsuario = ?', [idUsuario], (err, results) => {
                if (err) {
                    return reject(err);
                }
                if (results.length === 0) {
                    return resolve(null); // Usuario no encontrado
                }
                resolve(results[0]); // Retorna el primer usuario encontrado
            });
        });
    },

    // Obtener usuario por Email
    getByEmail: async (Email) => {
        return new Promise((resolve, reject) => {
            db.query('SELECT * FROM Usuarios WHERE Email = ?', [Email], (err, results) => {
                if (err) {
                    return reject(err);
                }
                if (results.length === 0) {
                    return resolve(null); // Usuario no encontrado
                }
                resolve(results[0]); // Retorna el primer usuario encontrado
            });
        });
    },

    // Crear un nuevo usuario
    create: async ({ Email, Password, idRol }) => {
        return new Promise(async (resolve, reject) => {
            try {
                // Encriptar la contraseña
                const saltRounds = 10; // Número de rondas de sal
                const hashedPassword = await bcrypt.hash(Password, saltRounds);

                db.query(
                    'INSERT INTO Usuarios (Email, Password, idRol) VALUES (?, ?, ?)',
                    [Email, hashedPassword, idRol],
                    (err, result) => {
                        if (err) {
                            console.error('Error al insertar en la base de datos:', err);
                            return reject(err);
                        }
                        if (!result.insertId) {
                            return reject(new Error('Error al crear usuario: ID no disponible'));
                        }
                        resolve({ idUsuario: result.insertId, Email, idRol });
                    }
                );    const handleSubmit = async (e) => {
                    e.preventDefault();
            
                    try {
                        const credenciales = { Email, Password };
                        const response = await login(credenciales); // Llama a la función de login
                        
                        if (response) {
                            setIsAuthenticated(true); // Autentica al usuario
                            navigate('/dashboard'); // Redirigir al dashboard
                        }
                    } catch (error) {
                        setErrorMessage('Usuario o contraseña incorrectos'); // Maneja el error y muestra mensaje
                    }
                };
            } catch (error) {
                console.error('Error al encriptar la contraseña:', error);
                reject(error);
            }
        });
    },

    // Validar el inicio de sesión
    validateLogin: async (Email, Password) => {
        const user = await Usuario.getByEmail(Email);
        console.log('Usuario encontrado:', user); // Agregado para depurar
        if (!user) {
            throw new Error('Usuario no encontrado');
        }
        const isMatch = await bcrypt.compare(Password, user.Password); // Asegúrate de que 'Password' sea el campo correcto en tu base de datos
        if (!isMatch) {
            throw new Error('Contraseña incorrecta');
        }
        return user; // Retorna el usuario si la contraseña es correcta
    },
};

module.exports = Usuario;
