var express = require('express');
var ProductRePo = require('../repos/ProductRePo');

var app = express();
var router = express.Router();

router.get('/', (req, res) => {
    ProductRePo.searchById(req.query.id).then(rows => {
        var p1= ProductRePo.loadByKind(rows[0].idLoai);
        var p2=ProductRePo.loadByPD(rows[0].idNhaSX);
        var p3=ProductRePo.loadTheLoai(rows[0].idLoai);

        Promise.all([p1, p2,p3]).then(([kind, products,Theloai]) => {
            var vm={
                products: rows,
                kind:kind,
                nsb:products,
                tl:Theloai[0]
            }
            res.render('sample_product', vm);
        });
    });
});



module.exports = router;