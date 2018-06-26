var express = require('express');
var restrict = require('../middle-wares/restrictManager');
var categoryRepo = require('../repos/categoryRepo');
var payRepo = require('../repos/payRepo');
var router = express.Router();
var manager = require('../repos/managerRepo');
var SHA256 = require('crypto-js/sha256');

var SPRePo = require('../repos/SPRePo');

var multer  = require('multer')

router.get('/dashboard', restrict, (req, res) => {
    res.render('manager/dashboard');
});
router.get('/theloai', restrict, (req, res) => {
    categoryRepo.loadAllKind().then(rows => {
        var vm = {
            theloai: rows
        };
        res.render('manager/qly-loaisp', vm);
    });
});
router.get('/nxb', restrict, (req, res) => {
    categoryRepo.loadAllPD().then(rows => {
        var vm = {
            nxb: rows
        };
        res.render('manager/qly-nhasx', vm);
    });
});
router.get('/don-hang', restrict, (req, res) => {
    payRepo.getAllPayment().then(rows => {
        var vm = {
            donhang: rows
        }

        res.render('manager/qly-donhang', vm);
    });
});

router.post('/theloai', (req, res) => {
    categoryRepo.updateLoai(req.body.idLoai, req.body.tenLoai).then(rows => {
        categoryRepo.loadAllKind().then(rows => {
            var vm = {
                showMsg: true,
                Msg: 'Cập nhật thành công!',
                theloai: rows
            };
            res.render('manager/qly-loaisp', vm);
        })
    });

});
router.get('/theloai/add', restrict, (req, res) => {
    res.render('manager/add/addLoai');
});
router.post('/theloai/add', (req, res) => {
    categoryRepo.addLoai(req.body.tenLoai);
    var vm = {
        showMsg: true,
        Msg: 'Thêm thành công!',
    };
    res.render('manager/add/addLoai', vm);
});
router.post('/don-hang', (req, res) => {
    console.log(req.body.idThanhToan);
    console.log(req.body.select);
    payRepo.updateTrangThaiDH(req.body.idThanhToan, req.body.select);
    res.redirect('don-hang');
});

router.post('/nxb', (req, res) => {
    categoryRepo.updateNXB(req.body.idNhaSX, req.body.tenNhaSX).then(rows => {
        categoryRepo.loadAllPD().then(rows => {
            var vm = {
                showMsg: true,
                Msg: 'Cập nhật thành công!',
                nxb: rows
            };
            res.render('manager/qly-nhasx', vm);
        })
    });

});
router.get('/nxb/add', restrict, (req, res) => {
    res.render('manager/add/addNXB');
});
router.post('/nxb/add', (req, res) => {
    categoryRepo.addNXB(req.body.tenNXB);
    var vm = {
        showMsg: true,
        Msg: 'Thêm thành công!',
    };
    res.render('manager/add/addNXB', vm);
});

router.get('/Acount', restrict, (req, res) => {
    manager.loadAcount().then(rows => {
        var vm = {
            user: rows
        }
        res.render('manager/qly-acount', vm);
    });
});
router.post('/Acount', restrict, (req, res) => {
    var str = "12345678";
    console.log(SHA256(str).toString());
    console.log(req.body.name);
    manager.UpdatepassAcount(req.body.name, SHA256(str).toString()).then(rows => {
        manager.loadAcount().then(rows => {
            var vm = {
                user: rows,
                showMsg: true,
                Msg: 'Reset password thành công!'
            }
            res.render('manager/qly-acount', vm);
        });
    });
});
router.get('/sanpham', (req, res) => {
    SPRePo.loadAll().then(rows => {
        var vm = {
            Book: rows,
            NhaSX: rows,
            Loai: rows
        };
        res.render('manager/qly-sanpham', vm);
    });
});
router.get('/sanpham/add', (req, res) => {
    var p1 = categoryRepo.loadAllLoai();
    var p2 = categoryRepo.loadAllPD();
    Promise.all([p1, p2]).then(([loai, nxb]) => {
        var vm = {
            loai: loai,
            nxb: nxb,
            showAlert: false

        };
        res.render('manager/add/addSanPham', vm);
    });
});
router.get('/sanpham/delete', (req, res) => {
    var vm = {
        idSach: req.query.id
    };
    res.render('manager/deleteSanPham', vm);
});
router.post('/sanpham/delete', (req, res) => {

    SPRePo.delete(req.body.idSach).then(value => {
        res.redirect('/sanpham');
    });
});

router.get('/sanpham/edit', (req, res) => {
    

        var p1 = categoryRepo.loadAllLoai();
        var p2 = categoryRepo.loadAllPD();
        var p3=SPRePo.single(req.query.id);
        Promise.all([p1, p2,p3]).then(([loai, nxb,c]) => {
            
            var vm = {
                Book: c[0],
                loai: loai,
                nxb: nxb,
                showAlert: false
    
            };
            
            res.render('manager/edit/editSanPham', vm);
        });
        
   
});

router.post('/sanpham/edit', (req, res) => {
    SPRePo.update(req.body).then(value => {
        res.redirect('/sanpham');
    });
});

var storage = multer.diskStorage({
    destination: 'public/ss',
    filename: (req, file, cb) => {
        cb(null, file.originalname);
    }
  })  
const upload = multer({storage: storage}).single('fileS')
  router.post('/sanpham/add/upload', function (req, res,next) {
    upload(req, res,(err)=> {
        if (err) {
            console.log("false");
          // An error occurred when uploading
          return
        }
        console.log(req.file);
        console.log("done");
        // Everything went fine
      })
});


module.exports = router;