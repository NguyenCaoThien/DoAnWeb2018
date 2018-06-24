var db = require("../../config/mysql")
exports.loadAll=()=>{
	return new Promise((resolve, reject) => {
		var query =  `select quantrivien.Id,quantrivien.TenQuanTriVien,quantrivien.Email,quantrivien.SDT,DATE_FORMAT(quantrivien.NgaySinh, '%d/%m/%Y') as NgaySinh,quantrivien.GioiTinh from quantrivien`;
		db.query(query, (err, results, fields) => {
			if(err)
				reject(err);
			else
				resolve(results);
		});
	});
}
exports.add=(quantrivien)=>{
	return new Promise((resolve, reject) => {
		var query = `insert into quantrivien(TenQuanTriVien,Email,SDT,NgaySinh,GioiTinh) values('${quantrivien.ten}','${quantrivien.email}','${quantrivien.sdt}','${quantrivien.ngaysinh}','${quantrivien.gioitinh}')`;
		db.query(query, (err, results, fields) => {
			if(err)
				reject(err);
			else
				db.query(`insert into taikhoan values('${quantrivien.username}','${quantrivien.pass}','1',`+results.insertId+`)`);
				resolve(results);
		});
	});
}
exports.getById = (id) => {
	return new Promise((resolve, reject) => {
        var query = `select quantrivien.Id, quantrivien.TenQuanTriVien,quantrivien.Email,quantrivien.SDT, DATE_FORMAT(quantrivien.NgaySinh, '%Y-%m-%d') as NgaySinh,quantrivien.GioiTinh from quantrivien where quantrivien.Id = ${id}`
		db.query(query, (err, result, fields) => {
			if (err)
				reject(err);
			else
				resolve(result[0]);
		});
	});
}
exports.delete = (id) => {
	return new Promise((resolve, reject) => {
		var query = ` delete from taikhoan where IdQuanTriVien ='${id}';delete from quantrivien where Id = '${id}'`;
		db.query(query, (err, result, fields) => {
			if (err)
				reject(err);
			else
				resolve(result);
		}); 
	})
}
exports.update=(quantrivien)=>{
	return new Promise((resolve, reject) => {
		var query = `update quantrivien set TenQuanTriVien = '${quantrivien.ten}',Email = '${quantrivien.email}',SDT = '${quantrivien.sdt}',NgaySinh = '${quantrivien.ngaysinh}',GioiTinh = '${quantrivien.gioitinh}' where Id = ${quantrivien.Id} `;
		db.query(query, (err, result, fields) => {
			if (err)
				reject(err);
			else
				resolve(result);
		}); 
	})
}
exports.updateacc=(pass,user)=>{
	return new Promise((resolve, reject) => {
		var query = `update taikhoan set Pass = '${pass}' where Username='${user}'`;
		db.query(query, (err, results, fields) => {
			if(err)
				reject(err);
			else
				resolve(results);
		});
	});
}