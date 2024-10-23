const express = require('express');
const router = express.Router();
const authRole = require('../middlewares/authRole');

// Ruta accesible para administradores, managers y contadores
router.get('/dashboard', authRole(['admin', 'manager', 'contador']), (req, res) => {
    res.send('Acceso permitido para administradores, managers y contadores');
});

// Ruta para gestionar reportes contables (solo contadores o superior)
router.get('/reporte-contable', authRole(['admin', 'manager', 'contador']), (req, res) => {
    // Lógica para generar reporte contable
    res.send('Reporte contable generado por contador');
});

module.exports = router;
