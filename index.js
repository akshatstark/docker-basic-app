const express = require('express');
const app = express();
const port=3000;
app.get("/",(req,res)=>{
  res.json([
    { id: 1, name: 'Ali', email: 'alice@example.com', age: 30},
    { id: 2, name: 'Bob', email: 'bob@example.com', age: 30 },
    { id: 3, name: 'Charlie', email: 'charlie@example.com', age: 30 }
  ])
})
 
  app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
  });