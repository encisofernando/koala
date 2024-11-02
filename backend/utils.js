const db = require('./config/db');

const generarIdBase = () => {
    return new Promise((resolve, reject) => {
        db.query('SELECT MAX(idBase) as maxIdBase FROM Usuarios', (err, results) => {
            if (err) {
                return reject(err);
            }
            const nuevoIdBase = (results[0].maxIdBase || 0) + 1;
            resolve(nuevoIdBase);
        });
    });
};

module.exports = {
    generarIdBase
};
