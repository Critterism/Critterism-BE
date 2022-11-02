class TriviaSerializer
  include JSONAPI::Serializer

  set_id {nil}

  attributes  :category,
              :type,
              :difficulty,
              :question,
              :correct_answer,
              :incorrect_answers
end
