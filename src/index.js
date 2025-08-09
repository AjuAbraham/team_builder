import express from "express";
import dotenv from "dotenv";
import cors from "cors";
dotenv.config();
const app = express();

app.use(express.json({ limit: "64kb" }));
app.use(express.urlencoded({ extended: true, limit: "64kb" }));
app.use(cors());
const port = process.env.PORT;
app.listen(port, () => console.log(`Server is running on port: ${port}`));

export default app;
