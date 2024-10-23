const Empresa = require('../models/Empresa'); // Asegúrate de tener el modelo Empresa

// Controlador para obtener todas las empresas
const getAllEmpresas = (req, res) => {
    Empresa.getAll((err, empresas) => {
        if (err) {
            return res.status(500).json({ error: 'Error al obtener las empresas' });
        }
        res.status(200).json(empresas);
    });
};

// Controlador para obtener una empresa por ID
const getEmpresaById = (req, res) => {
    const id = req.params.id;
    if (!id) {
        return res.status(400).json({ error: 'ID de empresa es requerido' });
    }

    Empresa.getById(id, (err, result) => {
        if (err) {
            return res.status(404).json({ error: 'Empresa no encontrada' });
        }
        res.status(200).json(result);
    });
};

// Controlador para crear una nueva empresa
const createEmpresa = (req, res) => {
    const newEmpresa = req.body;

    console.log('Nueva Empresa:', newEmpresa);

    // Validación de datos
    if (
        !newEmpresa.RazonSocial || 
        !newEmpresa.RptDir1 ||
        !newEmpresa.CUIT || // Agregado
        !newEmpresa.NomComercial || // Agregado
        !newEmpresa.IniActividad || // Agregado
        !newEmpresa.NombreRubro || // Agregado
        !newEmpresa.Activo 
    ) {
        return res.status(400).json({ error: 'Faltan datos requeridos o son inválidos' });
    }

    Empresa.create(newEmpresa, (err, result) => {
        if (err) {
            console.error(err);
            return res.status(500).json({ error: 'Error al crear empresa' });
        }
        res.status(201).json(result);
    });
};

// Controlador para actualizar una empresa
const updateEmpresa = (req, res) => {
    const id = req.params.id;
    const updatedEmpresa = req.body;

    if (!id) {
        return res.status(400).json({ error: 'ID de empresa es requerido' });
    }

    Empresa.update(id, updatedEmpresa, (err, result) => {
        if (err) {
            console.error('Error al actualizar la empresa:', err);
            return res.status(500).json({ error: 'Error al actualizar empresa' });
        }
        res.status(200).json(result);
    });
    
};

// Exportar los controladores
module.exports = {
    getAllEmpresas,
    getEmpresaById,
    createEmpresa,
    updateEmpresa
};
