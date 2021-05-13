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

router.get('/delete/:id_user',async(req,res)=>{
  const {id_user}= req.params;
  const usua= await pool.query('delete from usuarios where id_user=?',[id_user]);
  res.redirect('/pro/add');
});


router.get('/update',async(req,res)=>{
  // res.send('Oh yeah');
  const usua = await pool.query('select * from `usuarios`');
  res.render('pro/update',{usua});
});

router.post('/update', async(req,res)=>{
  // res.send('Oh yeah');
  console.log(req.body);
  const usua1 = await pool.query('select * from `usuarios`');
  await pool.query('update usuarios set nombres=?, where id_user=?',
  [req.body.nombres, req.body.id_user]);
  res.redirect('/pro/update');
});

 



module.exports= router;