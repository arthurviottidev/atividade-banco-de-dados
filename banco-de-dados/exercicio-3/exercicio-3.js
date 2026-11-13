use blog

db.createCollection("posts")

db.posts.insertOne({
  titulo: "Primeiro contato com MongoDB",
  autor: "Arthur Viotti",
  conteudo: "Hoje subi o Mongo no Docker e criei minha primeira collection."
})

db.posts.insertOne({
  titulo: "Schema flexível na prática",
  autor: "Maria Eduarda Martins",
  conteudo: "No Mongo dá pra salvar os documentos com campos diferentes, na mesma collection.",
  tags: ["nosql", "flexivel"]
})

db.posts.find()