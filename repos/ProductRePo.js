var db = require('../fn/db');

exports.searchById = (id) => {
    var sql = `Select* from Book where idSach = ${id}`;
    return db.load(sql);
}
exports.loadByViews = () => {
    var sql = `select * from Book order by luotXem desc limit ${10} offset ${0}`;
    return db.load(sql);
}
exports.single = idSach => {
    var sql = `select * from Book where idSach = ${idSach}`;
    return db.load(sql);
}
exports.loadDetail = (idSach)=> {

    var sql = `Select* from Book where idSach = ${idSach}`;

    return db.load(sql);

}

exports.loadByKind = (idTheLoai) => {
    var sql = `select * from Book where idLoai="${idTheLoai}" order by luotXem desc limit ${10} offset ${0}`;
    return db.load(sql);
}
exports.loadByPD = (idNXB) => {
    var sql = `select * from Book where idNhaSX="${idNXB}" order by luotXem desc limit ${10} offset ${0}`;
    return db.load(sql);
}

exports.loadTheLoai = (idTheLoai) => {
    var sql= `select * from loai where idLoai=${idTheLoai}`;
    return db.load(sql);
}

