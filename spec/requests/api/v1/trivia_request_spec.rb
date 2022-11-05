require 'rails_helper'

RSpec.describe 'Trivia Api Response' do
  it 'can return a JSON response with list of trivia questions', :vcr do
    get api_v1_trivia_path
    expect(response).to be_successful

    results = JSON.parse(response.body, symbolize_names: true)
    expect(results).to be_a Hash
    expect(results[:data]).to be_a Array

    results[:data].each do |result|

      expect(result[:id]).to eq(nil)
      expect(result[:type]).to eq('trivia')
      expect(result[:attributes][:category]).to eq('Animals')
      expect(result[:attributes]).to have_key(:difficulty)
      expect(result[:attributes]).to have_key(:question)
      expect(result[:attributes]).to have_key(:correct_answer)
      expect(result[:attributes]).to have_key(:incorrect_answers)
      expect(result[:attributes]).to have_key(:answers)
      expect(result[:attributes][:incorrect_answers]).to be_a Array
      expect(result[:attributes][:answers]).to be_a Array
    end
  end
end
