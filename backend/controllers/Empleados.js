const Empleado = require('../models/Empleados'); 

// Obtener todos los empleados
const getAllEmpleados = (req, res) => {
    const idBase = req.idBase; // Obtén idBase del token

    Empleado.getAll(idBase, (err, empleados) => {
        if (err) {
            return res.status(500).json({ error: 'Error al obtener los empleados' });
        }
        res.status(200).json(empleados);
    });
};

// Obtener un empleado por ID
const getEmpleadoById = (req, res) => {
    const idBase = req.idBase; // Obtener idBase del token

    const id = req.params.id;
    if (!id) {
        return res.status(400).json({ error: 'ID de empleado es requerido' });
    }

    Empleado.getById(id, idBase, (err, result) => {
        if (err) {
            return res.status(404).json({ error: 'Empleado no encontrado' });
        }
        res.status(200).json(result);
    });
};

// Crear un empleado
const createEmpleado = (req, res) => {
    console.log("Archivo recibido:", req.file);
    const newEmpleado = { ...req.body, idBase: req.idBase }; // Añadir idBase aquí

    console.log("Datos a crear:", newEmpleado);

    // Validar campos requeridos
    if (
        !newEmpleado.Nombre || 
        !newEmpleado.Apellido ||
        !newEmpleado.NroDoc || 
        !newEmpleado.TpDoc ||
        !newEmpleado.CodPostal ||
        !newEmpleado.Localidad ||
        !newEmpleado.Provincia ||
        !newEmpleado.FechaNac ||
        !newEmpleado.Password // Validar que el Password esté presente
    ) {
        return res.status(400).json({ error: 'Faltan datos requeridos o son inválidos' });
    }

      // Si hay un archivo de imagen subido, generar la URL de la imagen
      if (req.file) {
        newEmpleado.Imagen = `http://localhost:3000/uploads/${req.file.filename}`;
    }
    

    Empleado.create(newEmpleado, (err, result) => {
        if (err) {
            console.error('Error al crear empleado:', err);
            return res.status(500).json({ error: 'Error al crear empleado' });
        }
        res.status(201).json(result);
    });
};

// Actualizar un empleado
const updateEmpleado = (req, res) => {
    const id = req.params.id;
    const updatedEmpleado = req.body;
    const idBase = req.idBase;

    console.log("ID:", id);
    console.log("ID Base:", idBase);
    console.log("Datos a actualizar:", updatedEmpleado);
    
    if (!id) {
        return res.status(400).json({ error: 'ID de empleado es requerido' });
    }

    Empleado.update(id, idBase, updatedEmpleado, (err, result) => {
        if (err) {
            console.error("Error al actualizar empleado:", err);
            return res.status(500).json({ error: 'Error al actualizar empleado' });
        }
        res.status(200).json(result);
    });
};


// Eliminar un empleado
const deleteEmpleado = (req, res) => {
    const id = req.params.id;
    if (!id) {
        return res.status(400).json({ error: 'ID de empleado es requerido' });
    }

    Empleado.delete(id, (err, result) => {
        if (err) {
            return res.status(500).json({ error: 'Error al eliminar empleado' });
        }
        res.status(200).json(result);
    });
};

module.exports = {
    getAllEmpleados,
    getEmpleadoById,
    createEmpleado,
    updateEmpleado,
    deleteEmpleado
};
