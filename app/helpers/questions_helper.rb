module QuestionsHelper
  def ques_helper
    @question_array = []
    @question_ids = []
    @question_number = []
    i = 1
    @questions.each do |question|
      @question_number.push(i)
      @question_array.push(question)
      @question_ids.push(question.id)
    end
  end
end
