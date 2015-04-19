# ------------
# Example quiz seeds. Use the following pattern to add your own, or simply manage topics and questions through the web-based GUI.
# ------------
# Example:
# category = Category.create(name: "Category Name")
#   question = category.questions.create(
#     text:"Question text")
#     question.answers.create([
#       {text: "answer 1"},
#       {text: "answer 2"},
#       {text: "etc..."  }
#     ])
# ------------

#Seed General category
category = Category.create(name: "General")
  question = category.questions.create(
    text:"What type of acid is found in vinegar?")
    question.answers.create([
      {text: "acetic"},
      {text: "acetic acid"}])
  question = category.questions.create(
    text:"What name is given to a word that reads the same both ways?")
    question.answers.create([
      {text: "palindrome"},
      {text: "a palindrome"}])
  question = category.questions.create(
    text:"The nursery rhyme Ring Around the Rosie refers to which major disease outbreak?")
    question.answers.create([
      {text: "plague"},
      {text: "the plague"},
      {text: "bubonic plague"},
      {text: "the bubonic plague"},
      {text: "black death"},
      {text: "the black death"},
      {text: "yersinia pestis"}])
  question = category.questions.create(
    text:"What vegetable in the mustard family is named for a European capital city?")
    question.answers.create([
      {text: "brussels sprouts"},
      {text: "brussel sprouts"},
      {text: "brussels sprout"},
      {text: "brussel sprout"},
      {text: "brussels"},
      {text: "brussel"}])
  question = category.questions.create(
    text:"What single city contains about 20% of the residents of its entire continent?")
    question.answers.create([
      {text: "sydney"},
      {text: "sydney australia"},
      {text: "sydney, australia"}])

#Seed Geography category
category = Category.create(name: "Geography")
  question = category.questions.create(
    text:"Which is the only borough of New York that is located on the mainland?")
    question.answers.create([
      {text: "bronx"},
      {text: "the bronx"}])
  question = category.questions.create(
    text:"What is the largest country through which the equator passes?")
    question.answers.create([
      {text: "brazil"}])
  question = category.questions.create(
    text:"Which river flows through the Grand Canyon?")
    question.answers.create([
      {text: "colorado"},
      {text: "colorado river"},
      {text: "the colorado river"}])
  question = category.questions.create(
    text:"On Earth, the lithosphere is broken up into which type of plates?")
    question.answers.create([
      {text: "tectonic"},
      {text: "techtonic"}])
  question = category.questions.create(
    text:"Name one of the two US states whose shapes are completely rectangular.")
    question.answers.create([
      {text: "wyoming"},
      {text: "colorado"}])

#Seed Music category
category = Category.create(name: "Music")
  question = category.questions.create(
    text:"Who had a hit in the 00s with 'The Fear'?")
    question.answers.create([
      {text: "lily allen"},
      {text: "lilly allen"},
      {text: "lily alan"},
      {text: "lilly alan"}])
  question = category.questions.create(
    text:"Who had a hit in the 90s with 'U Can't Touch This'?")
    question.answers.create([
      {text: "hammer"},
      {text: "mc hammer"},
      {text: "m.c. hammer"},
      {text: "stanley burrell"}])
  question = category.questions.create(
    text:"Who had a best-selling single in 2005 with 'Mockingbird'?")
    question.answers.create([
      {text: "eminem"},
      {text: "slim shady"},
      {text: "marshall mathers"}])
  question = category.questions.create(
    text:"Which country does singer Rihanna come from?")
    question.answers.create([
      {text: "barbados"}])
  question = category.questions.create(
    text:"What was the first song to be performed in outer space?")
    question.answers.create([
      {text: "happy birthday"},
      {text: "happy birthday to you"}])