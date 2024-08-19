# tests/test_orca.rb

require 'minitest/autorun'
require './facts'
require './adventure'
require './quiz'

class TestMenu < Minitest::Test
  def test_orca_facts
    facts = Facts.new
    l_facts_len = quiz.lpod_info.length
    j_facts_len = quiz.jpod_info.length
    k_facts_len = quiz.kpod_info.length
  end

end

def test_question_bank
  quiz = Quiz.new
  questions = quiz.question_bank

  assert_instance_of Array, questions
  assert_equal 9, questions.length  # Assuming there are 9 questions

  questions.each do |question|
    assert_instance_of Hash, question
    assert_includes question.keys, :question
    assert_includes question.keys, :choices
    assert_includes question.keys, :answer
  end
end

def test_character_selection
  adventure = Adventure.new
  adventure.character_selection

  assert_not_nil adventure.instance_variable_get(:@your_orca)
  orca = adventure.instance_variable_get(:@your_orca)
  
  assert_includes ["K20", "J27", "L25", "J56", "L41"], orca[:id]
end

def test_score_calculation
  quiz = Quiz.new

  # Mocking user input (this might require some setup to mock gets.chomp)
  def quiz.gets
    "B\n"  # Assuming correct answers are all "B"
  end

  quiz.launch_quiz  # This will run with mocked input

  # Assuming correct answers are mocked to be "B"
  assert_equal 9, quiz.instance_variable_get(:@score)  # Assuming there are 9 questions
end
