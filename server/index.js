const express = require('express');
const app = express();
app.use(express.json());

app.get('/', (req, res) => {
  res.json({status:'ok', message:'Rehearsal Scheduler API'});
});
// TODO: Add endpoints for users, groups, rehearsals, attendance, calendar integration

app.listen(4000,()=>console.log('API running on 4000'));
