const express = require('express');
const router = express.Router();
const pool= require('../database');

router.get('/add',async(req,res)=>{
   // res.send('Oh yeah');
   const usua = await pool.query('select * from `usuarios`');
   res.render('pro/add',{usua});
});
router.post('/add',async(req,res)=>{
  console.log(req.body);
  await pool.query('insert into usuarios set ?', [req.body]);
  res.redirect('/pro/add');
});

module.exports= router;