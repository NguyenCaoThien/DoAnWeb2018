/**
 * Created by tutrinh on 6/2/18.
 */
var express = require('express');
var categoryRepo = require('../repos/categoryRepo');
var products= require('../repos/ProductRePo');

var router = express.Router();

var p1 = categoryRepo.loadAllLoai();
var p2 = categoryRepo.loadAllBook();
var p4 = categoryRepo.loadAllPD();


router.get('/', (req, res) => {
    Promise.all([p1, p2,p4]).then(([rowloais, rowBooks,rowNhaSXs]) => {
        var vm = {
            loai: rowloais,
            book:rowBooks,
            NhaSX:rowNhaSXs
        };
        res.render('search/tim-kiem', vm);
    });
});

router.get('/theo-loai/', (req, res) => {
    var p3 =categoryRepo.load_by_idLoai(req.query.id);

    var p5= products.loadTheLoai(req.query.id);
    Promise.all([p1, p3,p4,p5]).then(([rowloais, rowBooks,rowNhaSXs,loaifull]) => {
        var vm = {
            loai: rowloais,
            book:rowBooks,
            NhaSX:rowNhaSXs,
            loaifull:loaifull[0]
        };
        res.render('search/tim-theo-loai', vm);
    });

});
router.get('/theo-NhaSX/', (req, res) => {
    var p3 =categoryRepo.load_by_idNhaSX(req.query.id);
    Promise.all([p1, p3,p4]).then(([rowloais, rowBooks,rowNhaSXs]) => {
        var vm = {
            loai: rowloais,
            book:rowBooks,
            NhaSX:rowNhaSXs

        };
        res.render('search/theo-nhasx', vm);
    });

});

module.exports = router;