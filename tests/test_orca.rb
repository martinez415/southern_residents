# tests/test_orca.rb

require 'minitest/autorun'
require './quiz'
require './facts'
class TestOrca < Minitest::Test
  def test_question_bank
    quiz = Quiz.new
    questions = quiz.question_bank
  
    assert_instance_of Array, questions
    assert_equal 9, questions.length
  end

  def test_lpod_info
    fact = Facts.new
    lpod_facts = fact.lpod_info
  
    assert_instance_of Array, lpod_facts
    assert_equal 5, lpod_facts.length
  end
end
