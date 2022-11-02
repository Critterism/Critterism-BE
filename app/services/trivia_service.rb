class TriviaService
  class << self
    def conn
      Faraday.new('https://opentdb.com')
    end

    def parse(response)
      JSON.parse(response.body, symbolize_names: true)
    end

    def get_trivia_data
      response = conn.get("/api.php?amount=10&category=27")
      TriviaService.parse(response)[:results]
    end
  end
end
