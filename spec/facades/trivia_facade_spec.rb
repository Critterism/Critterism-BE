require 'rails_helper'

RSpec.describe TriviaFacade do
  describe '.create_trivia', :vcr do
    it 'retrieves data for trivia questions and answers' do
      trivia_questions = TriviaFacade.create_trivia

      expect(trivia_questions[0]).to be_a Trivia
      expect(trivia_questions.count).to eq(10)
      trivia_questions.each do |question|
        expect(question).to be_a Trivia
        expect(question.category).to eq('Animals')
        expect(question.question).to be_a String
        expect(question.difficulty).to be_a String
        expect(question.type).to be_a String
        expect(question.correct_answer).to be_a String
        expect(question.incorrect_answers).to be_an Array
        expect(question.answers).to be_an Array
      end
    end
  end
end
