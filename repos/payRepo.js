var db = require('../fn/db');

exports.getPayment = (idCus)=>{
    // var sql=`select * from ThanhToan where idKhachHang='${idCus}'`;
    var sql=`SELECT * 
            FROM ThanhToan INNER JOIN GioHang ON ThanhToan.idGioHang=GioHang.idGioHang 
            WHERE ThanhToan.idKhachHang='${idCus}'`;
    return db.load(sql);
};
exports.getDH=(idDH)=>{
    var sql=`SELECT * 
            FROM ThanhToan INNER JOIN GioHang ON ThanhToan.idGioHang=GioHang.idGioHang 
            WHERE ThanhToan.idThanhToan='${idDH}'`;
    return db.load(sql);
}
exports.getDatSP=(idGH)=>{
    var sql=`SELECT * 
            FROM DatSP INNER JOIN Book ON DatSP.idMaSP=Book.idSach
            WHERE DatSP.idGioHang='${idGH}'`;
    return db.load(sql);
}
exports.addCart=(total)=>{
    var sql=`insert into GioHang(tongGia) values('${total}')`;
    return db.save(sql);    
};
exports.addPToCart=(maSP,SL,idCart)=>{
    var sql = `insert into DatSP(idMaSP, soLuong, idGioHang) values('${maSP}', '${SL}', '${idCart}')`;
    return db.save(sql);    
};
exports.addPayment = (idCart,idKH,diaChi,ngay,sdt)=>{
    var sql = `insert into ThanhToan(idGioHang, idKhachHang, diaChiThanhToan,ngayDatHang,sdtNhanHang,trangThai) values('${idCart}', '${idKH}', '${diaChi}','${ngay}','${sdt}','chờ giao hàng')`;
    return db.save(sql); 
};
exports.updateTrangThaiDH=(idDH,TT)=>{
    var sql=`UPDATE ThanhToan SET trangThai='${TT}' WHERE idThanhToan = '${idDH}'`;
    return db.save(sql);
};
exports.getAllPayment = ()=>{
    
    var sql=`SELECT * 
            FROM ThanhToan INNER JOIN KhachHang ON ThanhToan.idKhachHang=KhachHang.idKhachHang `;
    return db.load(sql);
};