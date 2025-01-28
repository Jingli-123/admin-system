import express from 'express';
import path from 'path';
import { fileURLToPath } from 'url';
import fs from 'fs/promises';
import { dirname } from 'path';
import pool from './src/config/mysql.config.js';
import HttpStatus from './src/controller/controller.js';
import dotenv from 'dotenv';
import cors from 'cors';
const app = express();
const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

dotenv.config(); //loads environment variables from .env file into process.env
const PORT = process.env.SERVER_PORT || 8087;

app.use(express.json());
app.use(cors());
app.use(express.urlencoded({ extended: true }));
async function initializeDatabase(conn) {
    try {
        await conn.beginTransaction();

        const sqlFilePath = path.join(__dirname, 'mysql', 'seeds', 'staff.seed.sql');
        const sqlContent = await fs.readFile(sqlFilePath, 'utf-8');
        await conn.query(sqlContent);

        await conn.commit();
    } catch (error) {
        await conn.rollback();
        throw error;
    }
}