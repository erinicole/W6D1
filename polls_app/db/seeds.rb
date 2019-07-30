# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do

  movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
  Character.create(name: 'Luke', movie: movies.first)

  AnswerChoice.destroy_all
  Response.destroy_all
  Question.destroy_all
  Poll.destroy_all
  User.destroy_all


  users = User.create([ 
    {username: 'brian'}, 
    {username: 'erin'}, 
    {username: 'Tiff'}, 
    {username: 'Bob'} 
  ])

  polls = Poll.create([
    { title: 'Fav Color', user_id: users.first.id }, 
    { title: 'Ice Cream', user_id: users.second.id }, 

  ])

  questions = Question.create([
    { text: "What's your favorite color?", poll_id: polls.first.id, answer_choices: ? },
    { text: "What's your favorite ice cream?", poll_id: polls.second.id, answer_choices: ? },

  ])

  answer_choices = AnswerChoice.create([
    { text: "Cookies N Cream", question_id: questions.second.id },
    { text: "Blue", question_id: questions.first.id }
  ])

  responses = Response.create([
    { answer_choice: 2, user_id: 4 },
    { answer_choice: 1, user_id: 3 }
  ])
  
end
