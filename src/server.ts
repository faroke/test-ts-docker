import express from 'express';

const app = express();
const PORT = 3000;

// biome-ignore lint/suspicious/noExplicitAny: <explanation>
app.get('/', (req: any, res: any) => {
  void req 
  const date = new Date();
  res.send(date);
});

app.listen(PORT, () => {
  console.log(`Server is running at http://localhost:${PORT}`);
});
