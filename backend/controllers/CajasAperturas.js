const CajasAperturas = require('../models/CajasAperturas');

// Controller para CajasAperturas
const CajasAperturasController = {
    
    // Obtener todas las aperturas de caja
    getAll: (req, res) => {
        CajasAperturas.getAll((err, results) => {
            if (err) {
                return res.status(500).json({ message: 'Error al obtener las aperturas de caja', error: err });
            }
            res.status(200).json(results);
        });
    },

    // Obtener una apertura de caja por su ID
    getById: (req, res) => {
        const { id } = req.params;
        CajasAperturas.getById(id, (err, result) => {
            if (err) {
                return res.status(500).json({ message: 'Error al obtener la apertura de caja', error: err });
            }
            if (!result) {
                return res.status(404).json({ message: 'Apertura de caja no encontrada' });
            }
            res.status(200).json(result);
        });
    },

    // Crear una nueva apertura de caja
    create: (req, res) => {
        const newCajaApertura = req.body;

        CajasAperturas.create(newCajaApertura, (err, result) => {
            if (err) {
                return res.status(500).json({ message: 'Error al crear la apertura de caja', error: err });
            }
            res.status(201).json({ message: 'Apertura de caja creada con éxito', data: result });
        });
    },

    // Actualizar una apertura de caja existente
    update: (req, res) => {
        const { id } = req.params;
        const updatedCajaApertura = req.body;

        CajasAperturas.update(id, updatedCajaApertura, (err, result) => {
            if (err) {
                return res.status(500).json({ message: 'Error al actualizar la apertura de caja', error: err });
            }
            res.status(200).json({ message: 'Apertura de caja actualizada con éxito', data: result });
        });
    },

    // Eliminar una apertura de caja por su ID
    delete: (req, res) => {
        const { id } = req.params;

        CajasAperturas.delete(id, (err, result) => {
            if (err) {
                return res.status(500).json({ message: 'Error al eliminar la apertura de caja', error: err });
            }
            res.status(200).json({ message: 'Apertura de caja eliminada con éxito', data: result });
        });
    }
};

module.exports = CajasAperturasController;
