import express from 'express'
import mongoose from 'mongoose'

const Animal = mongoose.model('Animal', new mongoose.Schema({
  tipo: String,
  estado: String,
}))

const app = express()

const MONGO_URL = process.env.MONGO_URL || 'mongodb://mati:pass@localhost:27017/miapp?authSource=admin'

mongoose.connect(MONGO_URL)
  .then(() => console.log('Conectado a MongoDB con éxito'))
  .catch(err => console.error('Error de conexión a Mongo:', err))

app.get('/', async (_req, res) => {
  console.log('listando... perrito...')
  const animales = await Animal.find();
  return res.send(animales)
})

app.get('/crear', async (_req, res) => {
  console.log('creando...')
  await Animal.create({ tipo: 'Perrito', estado: 'Feliz' })
  return res.send('ok')
})

app.listen(3000, () => console.log('Servidor escuchando en puerto 3000...'))