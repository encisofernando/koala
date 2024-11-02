const db = require('../config/db');
const bcrypt = require('bcrypt');


// Modelo para Empleados
const Empleado = {
    getAll: (idBase, callback) => {
        db.query('SELECT * FROM Empleados WHERE idBase = ?', [idBase], (err, results) => {
            if (err) {
                return callback(err);
            }
            callback(null, results);
        });
    },

    getById: (idEmpleado, idBase, callback) => {
        db.query('SELECT * FROM Empleados WHERE idEmpleado = ? AND idBase = ?', [idEmpleado, idBase], (err, result) => {
            if (err) {
                return callback(err);
            }
            if (result.length === 0) {
                return callback(new Error('Empleado no encontrado'));
            }
            callback(null, result[0]);
        });
    },

    create: async (newEmpleado, callback) => {
        const { 
            Nombre, 
            Apellido,
            NroDoc,
            TpDoc, // ID del tipo de documento
            CUIT,
            Tel1,
            Email1,
            Celular,
            Direccion,
            CodPostal,
            Barrio,
            Localidad,
            CondIVA,
            idProvincia, // ID de la provincia
            Provincia,
            Profesion,
            Imagen,
            FechaNac,
            Activo,
            Comentarios,
            FechaIncAct,
            FechaBaja,
            idRol,
            Rol,
            Password,
            idBase
        } = newEmpleado;
    
        // Encriptar la contraseña
        const hashedPassword = await bcrypt.hash(Password, 10);
    
        // Primero, obtener el idEmpresa y NomComercial correspondiente al idBase
        db.query(
            `SELECT idEmpresa, NomComercial FROM Empresa WHERE idBase = ?`,
            [idBase],
            (err, results) => {
                if (err) {
                    console.error('Error al obtener el idEmpresa y NomComercial:', err);
                    return callback(err);
                }
    
                // Verificar si se encontró una empresa
                if (results.length === 0) {
                    return callback(new Error('No se encontró empresa para el idBase proporcionado.'));
                }
    
                const { idEmpresa, NomComercial } = results[0];
    
                // Ahora, insertar el nuevo empleado incluyendo el idEmpresa y NomComercial
                db.query(
                    `INSERT INTO Empleados 
                      (Nombre, Apellido, NroDoc, TpDoc, CUIT, Tel1, Email1, Celular, Direccion, CodPostal, Barrio, Localidad, CondIVA, idProvincia, Provincia, Profesion, Imagen, FechaNac, Activo, Comentarios, FechaIncAct, FechaBaja, idRol, Rol, Password, idBase, idEmpresa, NomComercial) 
                     VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
                    [Nombre, Apellido, NroDoc, TpDoc, CUIT, Tel1, Email1, Celular, Direccion, CodPostal, Barrio, Localidad, CondIVA, idProvincia, Provincia, Profesion, Imagen, FechaNac, Activo, Comentarios, FechaIncAct, FechaBaja, idRol, Rol, hashedPassword, idBase, idEmpresa, NomComercial],
                    (err, result) => {
                        if (err) {
                            console.error('Error al insertar en la base de datos:', err);
                            return callback(err);
                        }
                        callback(null, { idEmpleado: result.insertId, ...newEmpleado });
                    }
                );
            }
        );
    },
    
    

    update: (id, idBase, updatedEmpleado, callback) => {
        const { 
            Nombre, 
            Apellido,
            NroDoc,
            TpDoc,
            CUIT,
            Tel1, 
            Email1, 
            Celular,
            Direccion,
            CodPostal,
            Barrio,
            Localidad,
            CondIVA,
            idProvincia,
            Provincia,
            Profesion,
            FechaNac,
            Activo,
            Comentarios,
            FechaIncAct,
            idRol,
            Rol,
            FechaBaja
        } = updatedEmpleado;

        db.query(
            `UPDATE Empleados SET 
                Nombre = ?, 
                Apellido = ?, 
                NroDoc = ?, 
                TpDoc = ?, 
                CUIT = ?, 
                Tel1 = ?, 
                Email1 = ?,
                Celular = ?,
                Direccion = ?,
                CodPostal = ?, 
                Barrio = ?, 
                Localidad = ?, 
                CondIVA = ?,
                idProvincia = ?, 
                Provincia = ?,
                Profesion = ?, 
                FechaNac = ?, 
                Activo = ?,
                Comentarios = ?,
                FechaIncAct = ?, 
                idRol = ?,
                Rol = ?,
                FechaBaja = ?
            WHERE idEmpleado = ? AND idBase = ?`,
            [Nombre, Apellido, NroDoc, TpDoc, CUIT, Tel1, Email1, Celular, Direccion, CodPostal, Barrio, Localidad, CondIVA, idProvincia, Provincia, Profesion, FechaNac, Activo, Comentarios, FechaIncAct, idRol, Rol, FechaBaja, id, idBase],
            (err, result) => {
                if (err) {
                    return callback(err);
                }
                callback(null, { id, ...updatedEmpleado });
            }
        );
    },

    delete: (id, callback) => {
        db.query('DELETE FROM Empleados WHERE idEmpleado = ?', [id], (err, result) => {
            if (err) {
                return callback(err);
            }
            callback(null, { message: 'Empleado eliminado', id });
        });
    }
};

module.exports = Empleado;
