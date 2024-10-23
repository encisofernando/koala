const express = require('express');
const router = express.Router();
const authRole = require('../middlewares/authRole');

// Ruta accesible para administradores y managers
router.get('/dashboard', authRole(['admin', 'manager']), (req, res) => {
    res.send('Acceso permitido para administradores y managers');
});

// Ruta para gestionar equipos (solo managers o admin)
router.put('/actualizar-equipo', authRole(['admin', 'manager']), (req, res) => {
    // Lógica para actualizar detalles de equipos
    res.send('Equipo actualizado por manager');
});

module.exports = router;
