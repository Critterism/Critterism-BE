require 'rails_helper'

RSpec.describe Trivia do
  describe 'instantiation' do
    let(:results) do
      {
        category: 'Animals',
        type: 'boolean',
        difficulty: 'easy',
        question: 'the axolotl us amphibian that can spend it whole life in a larval state?',
        correct_answer: 'true',
        incorrect_answers: ['False']
        }
    end
    it 'instantiates described class' do
      trivia = Trivia.new(results)
      expect(trivia).to be_instance_of(described_class)
      expect(trivia.category).to eq('Animals')
      expect(trivia.type).to eq('boolean')
      expect(trivia.question).to eq('the axolotl us amphibian that can spend it whole life in a larval state?')
      expect(trivia.correct_answer).to eq('true')
      expect(trivia.incorrect_answers).to eq(['False'])
    end
  end
end
