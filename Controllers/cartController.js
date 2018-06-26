/**
 * Created by tutrinh on 6/3/18.
 */
var express = require('express');
var cartRepo = require('../repos/cartRepo'),
    productRepo = require('../repos/ProductRepo'),
    payRepo=require('../repos/payRepo'),
    accountRepo=require('../repos/accountRepo');
var router = express.Router();
router.get('/', (req, res) => {
    accountRepo.getCus(req.session.user.idNguoiSuDung).then(rows=>{
        var vm = {
            items: req.session.cart,
            total: cartRepo.getTotal(req.session.cart),
            isEmpty: req.session.cart.length === 0,
            diaChi:rows[0].diaChi,
            SDT:rows[0].soDT,
        };
        res.render('cart/index', vm);
    });
});

router.post('/', (req, res) => {
    cartRepo.remove(req.session.cart, req.body.idSach);
    var vm = {
        items: req.session.cart,
        total: cartRepo.getTotal(req.session.cart),
        isEmpty: req.session.cart.length === 0,
    };
    res.render('cart/index', vm);

});

router.post('/add', (req, res) => {
    productRepo.loadDetail(req.body.idSach).then(rows => {
        var item = {
            idSach: req.body.idSach,
            ten_sach: rows[0].ten_sach,
            giaBan: rows[0].giaBan,
            hinh: rows[0].hinhAnh,
            sl: +req.body.sl,
            amount: rows[0].giaBan * +req.body.sl
        };
        cartRepo.add(req.session.cart, item);
       
        res.redirect('/sample_product/?id=' + req.body.idSach);
    });
});
router.post('/tt', (req, res) => {

    var date = new Date().toLocaleString().slice(0, 19).replace('T', ' ');
    var cart = req.session.cart;
    var idGioHang;
    payRepo.addCart(cartRepo.getTotal(req.session.cart)).then(value=>{
        idGioHang=value.insertId;
        for (i = cart.length - 1; i >= 0; i--) { 
            payRepo.addPToCart(cart[i].idSach, cart[i].sl, idGioHang);
            if (i==0){
                accountRepo.getCus(req.session.user.idNguoiSuDung).then(use=>{
                    payRepo.addPayment(idGioHang,use[0].idKhachHang,use[0].diaChi,date,use[0].soDT).then(value=>{
                        req.session.cart=[];
                        res.redirect('/cart');             
                    });
                });
                
            }
        }
    });
});




router.post('/remove', (req, res) => {
    cartRepo.remove(req.session.cart, req.body.ProId);
    res.redirect(req.headers.referer);
});

module.exports = router;