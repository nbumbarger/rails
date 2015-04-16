# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  category = Category.create(category: "General")
  question = category.questions.create(
    question: "What type of acid is found in vinegar?")
    question.answers.create([
      {answer: "acetic"},
      {answer: "acetic acid"}])
  question = category.questions.create(
    question: "What name is given to a word that reads the same both ways?")
    question.answers.create([
      {answer: "palindrome"},
      {answer: "a palindrome"}])
  question = category.questions.create(
    question: "The nursery rhyme Ring Around the Rosie refers to which major disease outbreak?")
    question.answers.create([
      {answer: "plague"},
      {answer: "the plague"},
      {answer: "bubonic plague"},
      {answer: "the bubonic plague"},
      {answer: "black death"},
      {answer: "the black death"},
      {answer: "yersinia pestis"}])
  question = category.questions.create(
    question: "What vegetable in the mustard family is named for a European capital city?")
    question.answers.create([
      {answer: "brussels sprouts"}])
  question = category.questions.create(
    question: "What single city contains about 20% of the residents of its entire continent?")
    question.answers.create([
      {answer: "syndney"},
      {answer: "syndney australia"},
      {answer: "syndney, australia"}])

  #Seed Geography category
  category = Category.create(category: "Geography")
  question = category.questions.create(
    question: "Which is the only borough of New York's that is located on the mainland?")
    question.answers.create([
      {answer: "bronx"},
      {answer: "the bronx"}])
  question = category.questions.create(
    question: "What is the largest country that the equator passes through?")
    question.answers.create([
      {answer: "brazil"}])
  question = category.questions.create(
    question: "Which river flows through the Grand Canyon?")
    question.answers.create([
      {answer: "colorado"},
      {answer: "colorado river"},
      {answer: "the colorado river"}])
  question = category.questions.create(
    question: "On Earth, the lithosphere is broken up into which type of plates?")
    question.answers.create([
      {answer: "tectonic"},
      {answer: "techtonic"}])
  question = category.questions.create(
    question: "Name one of the two US states whose shapes are completely rectangular.")
    question.answers.create([
      {answer: "wyoming"},
      {answer: "colorado"}])

  #Seed Music category
  category = Category.create(category: "Music")
  question = category.questions.create(
    question: "Who had a hit in the 00s with 'The Fear'?")
    question.answers.create([
      {answer: "lily allen"}])
  question = category.questions.create(
    question: "Who had a hit in the 90s with 'U Can't Touch This'?")
    question.answers.create([
      {answer: "hammer"},
      {answer: "mc hammer"},
      {answer: "m.c. hammer"},
      {answer: "stanley burrell"}])
  question = category.questions.create(
    question: "Who had a best-selling single in 2005 with 'Mockingbird'?")
    question.answers.create([
      {answer: "eminem"},
      {answer: "slim shady"},
      {answer: "marshall mathers"}])
  question = category.questions.create(
    question: "Which country does singer Rihanna come from?")
    question.answers.create([
      {answer: "barbados"}])
question = category.questions.create(
    question: "What was the first song to be performed in outer space?")
    question.answers.create([
      {answer: "happy birthday"},
      {answer: "happy birthday to you"}])