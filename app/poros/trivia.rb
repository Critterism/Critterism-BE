class Trivia
  attr_reader :category,
              :type,
              :difficulty,
              :question,
              :correct_answer,
              :incorrect_answer

  def initialize(results)
    @category = results[:category]
    @type = results[:type]
    @difficulty= results[:difficulty]
    @question = results[:question]
    @correct_answer = results[:correct_answer]
    @incorrect_answer = results[:incorrect_answer]
  end
end
