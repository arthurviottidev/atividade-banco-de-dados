db.posts.updateOne(
  { titulo: "Primeiro contato com MongoDB" },
  {
    $set: {
      comentarios: [
        { autor: "Diana", texto: "Massa, vou testar aqui também!", data: new Date() },
        { autor: "Apollo", texto: "Usou o compass ou foi pelo terminal?", data: new Date() }
      ]
    }
  }
)

db.posts.find()

db.posts.find({ tags: "nosql" })

db.posts.find({ autor: "Arthur Viotti" })

db.posts.find({ "comentarios.autor": "Diana" })