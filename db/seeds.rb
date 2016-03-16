user1 = User.create(name: "Roberto", email: "roberto@codea.mx", password: "1234")
user2 = User.create(name: "Ficha", email: "ficha@codea.mx", password: "4321")

user1.questions << Question.create(title: "pregunta test1", description: "contenido de la pregunta")
user2.questions << Question.create(title: "pregunta user2", description: "contenido de la pregunta")

Answer.create(user_id: user2.id, question_id: user1.questions.first.id, description: "respuesta hecha")

