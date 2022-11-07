require 'rails_helper'

RSpec.describe TriviaService, type: :service do
  describe '.get_trivia_data' do
    it 'retrieves trivia q and a data and parses the response', :vcr do
      parsed_json = TriviaService.get_trivia_data
      expect(parsed_json).to be_a Array
      expect(parsed_json[0]).to be_a Hash
      expect(parsed_json[0][:category]).to be_a String
      expect(parsed_json[0][:type]).to be_a String
      expect(parsed_json[0][:difficulty]).to be_a String
      expect(parsed_json[0][:question]).to be_a String
    end
  end
end
