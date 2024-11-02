const express = require('express');
const router = express.Router();
const authRole = require('../middlewares/authRole');

// Ruta accesible solo para administradores
router.get('/dashboard', authRole(['admin']), (req, res) => {
    res.send('Acceso permitido solo para administradores');
});

// Ruta para administrar usuarios (solo admin)
router.post('/crear-usuario', authRole(['admin']), (req, res) => {
    // Lógica para crear nuevos usuarios
    res.send('Usuario creado por administrador');
});

router.delete('/eliminar-usuario/:id', authRole(['admin']), (req, res) => {
    // Lógica para eliminar usuarios
    res.send('Usuario eliminado por administrador');
});

module.exports = router;
