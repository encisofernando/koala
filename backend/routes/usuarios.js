const express = require('express');
const router = express.Router();
const authRole = require('../middlewares/authRole');

// Ruta accesible por cualquier usuario autenticado
router.get('/dashboard', authRole(['admin', 'manager', 'contador', 'usuario']), (req, res) => {
    res.send('Acceso permitido para todos los roles');
});

// Ruta para modificar perfil (accesible para cualquier usuario autenticado)
router.put('/perfil', authRole(['admin', 'manager', 'contador', 'usuario']), (req, res) => {
    // Lógica para actualizar perfil de usuario
    res.send('Perfil actualizado');
});

module.exports = router;
