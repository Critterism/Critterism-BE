require 'rails_helper'

RSpec.describe TriviaFacade do
  describe '.create_trivia', :vcr do
    it 'retrieves data for trivia questions and answers' do
      trivia_questions = TriviaFacade.create_trivia

      expect(trivia_questions[0]).to be_a Trivia
      expect(trivia_questions.count).to eq(10)
      expect(trivia_questions[1].question).to be_a String
      expect(trivia_questions[1].type).to be_a String
      expect(trivia_questions[1].correct_answer).to be_a String
      expect(trivia_questions[1].question).to eq("The Kākāpō is a large, flightless, nocturnal parrot native to which country?")
    end
  end
end