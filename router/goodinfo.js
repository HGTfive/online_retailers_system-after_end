const express = require('express');
const router = express.Router();
const router_handle = require('../router_handle/goodinfo.js');

router.get('/goodsmsg',router_handle.getMsg);

module.exports = router;
