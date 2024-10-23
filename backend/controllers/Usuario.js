const jwt = require('jsonwebtoken');
const { create: createUsuario, getByEmail, validateLogin } = require('../models/Usuario');
const { JWT_SECRET, JWT_EXPIRES_IN } = require('../config/jwt'); // Asegúrate de importar la configuración

// Crear un nuevo usuario
const registerUsuario = async (req, res) => {
    const { Email, Password, idRol } = req.body;

    console.log('Datos recibidos:', req.body);

    // Validar que los campos requeridos estén presentes
    if (!Email || !Password || !idRol) {
        return res.status(400).json({ message: 'Todos los campos son obligatorios' });
    }

    try {
        // Verificar si el usuario ya existe
        const existingUser = await getByEmail(Email);
        if (existingUser) {
            return res.status(400).json({ message: 'El Email ya está en uso' });
        }

        // Crear el nuevo usuario
        const nuevoUsuario = await createUsuario({ Email, Password, idRol });

        return res.status(201).json({ message: 'Usuario creado', idUsuario: nuevoUsuario.idUsuario });
    } catch (error) {
        console.error('Error al registrar usuario:', error);
        return res.status(500).json({ message: 'Error al registrar usuario' });
    }
};

const getUsuario = async (req, res) => {
    try {
        const { idUsuario } = req.params; // Obtener el ID del usuario desde los parámetros de la solicitud
        const usuario = await getById(idUsuario); // Llamar a la función getById del modelo

        if (!usuario) {
            return res.status(404).json({ message: 'Usuario no encontrado' });
        }

        // No es necesario devolver la contraseña
        const { Password, ...usuarioSinPassword } = usuario; // Excluir el campo Password

        res.status(200).json(usuarioSinPassword); // Retornar el usuario sin la contraseña
    } catch (error) {
        console.error('Error al obtener usuario por ID:', error);
        res.status(500).json({ message: 'Error del servidor' });
    }
};

// Iniciar sesión
const login = async (req, res) => {
    try {
        const { Email, Password } = req.body;

        // Validar credenciales
        if (!Email || !Password) {
            return res.status(400).json({ message: 'Email y contraseña son obligatorios' });
        }

        console.log('Credenciales recibidas:', { Email, Password }); // Agregado para depurar

        // Validar el inicio de sesión
        const user = await validateLogin(Email, Password); // Ahora solo obtienes el usuario

        // Si llegas aquí, significa que las credenciales son válidas
        const token = jwt.sign({ idUsuario: user.idUsuario, Email: user.Email }, JWT_SECRET, {
            expiresIn: JWT_EXPIRES_IN
        });

        res.status(200).json({ message: 'Inicio de sesión exitoso', token }); // Retorna el token
    } catch (error) {
        console.error('Error al iniciar sesión:', error);
        return res.status(401).json({ message: 'Credenciales inválidas' }); // Cambiado para manejar errores de login
    }
};

module.exports = {
    registerUsuario,
    getUsuario,
    login,
};
