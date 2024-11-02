const db = require('../config/db');

// Modelo para CajasAperturas
const CajasAperturas = {
    getAll: (callback) => {
        db.query('SELECT * FROM cajasaperturas', (err, results) => {
            if (err) {
                return callback(err);
            }
            callback(null, results);
        });
    },

    getById: (idCajaApertura, callback) => {
        db.query('SELECT * FROM cajasaperturas WHERE idCajaApertura = ?', [idCajaApertura], (err, result) => {
            if (err) {
                return callback(err);
            }
            if (result.length === 0) {
                return callback(new Error('Caja Apertura no encontrada'));
            }
            callback(null, result[0]); // Devuelve solo una apertura de caja
        });
    },

    create: (newCajaApertura, callback) => {
        const { 
            idCaja,
            EstadoCaja,
            FechaApertura,
            idUsuarioApertura,
            EfectivoApertura,
            FechaCierre,
            idUsuarioCierre,
            EfectivoCierre,
            TotalCajaSalidas,
            TotalCajaEntradas,
            TarjetasCierre,
            TotalTarjetas,
            TotalEfectivo,
            TotalVentas,
            TotalCaja,
            Comentario,
            ComentarioPostCierre,
            SincroWeb,
            idBase,
            CantDineroCi,
            CantDineroAp
        } = newCajaApertura;

        db.query(
            `INSERT INTO cajasaperturas 
              (idCaja, EstadoCaja, FechaApertura, idUsuarioApertura, EfectivoApertura, FechaCierre, idUsuarioCierre, EfectivoCierre, TotalCajaSalidas, TotalCajaEntradas, TarjetasCierre, TotalTarjetas, TotalEfectivo, TotalVentas, TotalCaja, Comentario, ComentarioPostCierre, SincroWeb, idBase, CantDineroCi, CantDineroAp) 
             VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,

            [
                idCaja, EstadoCaja, FechaApertura, idUsuarioApertura, 
                EfectivoApertura, FechaCierre, idUsuarioCierre, 
                EfectivoCierre, TotalCajaSalidas, TotalCajaEntradas, 
                TarjetasCierre, TotalTarjetas, TotalEfectivo, TotalVentas, 
                TotalCaja, Comentario, ComentarioPostCierre, SincroWeb, 
                idBase, CantDineroCi, CantDineroAp
            ],
            (err, result) => {
                if (err) {
                    console.error('Error al insertar en la base de datos:', err);
                    return callback(err);
                }
                callback(null, { idCajaApertura: result.insertId, ...newCajaApertura });
            }
        );
    },

    update: (id, updatedCajaApertura, callback) => {
        const {
            idCaja,
            EstadoCaja,
            FechaApertura,
            idUsuarioApertura,
            EfectivoApertura,
            FechaCierre,
            idUsuarioCierre,
            EfectivoCierre,
            TotalCajaSalidas,
            TotalCajaEntradas,
            TarjetasCierre,
            TotalTarjetas,
            TotalEfectivo,
            TotalVentas,
            TotalCaja,
            Comentario,
            ComentarioPostCierre,
            SincroWeb,
            idBase,
            CantDineroCi,
            CantDineroAp
        } = updatedCajaApertura;

        db.query(
            `UPDATE cajasaperturas SET 
                idCaja = ?, 
                EstadoCaja = ?, 
                FechaApertura = ?, 
                idUsuarioApertura = ?, 
                EfectivoApertura = ?, 
                FechaCierre = ?, 
                idUsuarioCierre = ?, 
                EfectivoCierre = ?, 
                TotalCajaSalidas = ?, 
                TotalCajaEntradas = ?, 
                TarjetasCierre = ?, 
                TotalTarjetas = ?, 
                TotalEfectivo = ?, 
                TotalVentas = ?, 
                TotalCaja = ?, 
                Comentario = ?, 
                ComentarioPostCierre = ?, 
                SincroWeb = ?, 
                idBase = ?, 
                CantDineroCi = ?, 
                CantDineroAp = ?
            WHERE idCajaApertura = ?`,
            [
                idCaja, EstadoCaja, FechaApertura, idUsuarioApertura, 
                EfectivoApertura, FechaCierre, idUsuarioCierre, 
                EfectivoCierre, TotalCajaSalidas, TotalCajaEntradas, 
                TarjetasCierre, TotalTarjetas, TotalEfectivo, TotalVentas, 
                TotalCaja, Comentario, ComentarioPostCierre, SincroWeb, 
                idBase, CantDineroCi, CantDineroAp, id
            ],
            (err, result) => {
                if (err) {
                    return callback(err);
                }
                callback(null, { id, ...updatedCajaApertura });
            }
        );
    },

    delete: (id, callback) => {
        db.query('DELETE FROM cajasaperturas WHERE idCajaApertura = ?', [id], (err, result) => {
            if (err) {
                return callback(err);
            }
            callback(null, { message: 'Caja Apertura eliminada', id });
        });
    }
};

module.exports = CajasAperturas;
