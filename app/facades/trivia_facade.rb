class TriviaFacade
  class << self
    def create_trivia
      trivia_questions = TriviaService.get_trivia_data
      trivia_questions.map do |question|
        Trivia.new(question)
      end
    end
  end
end
