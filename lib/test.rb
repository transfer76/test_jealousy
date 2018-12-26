class Test
  def initialize(question_path)
    if File.exist?(question_path)
      file = File.new(question_path, 'r')
      @questions = file.readlines
      file.close
    end

    @user_answer = 0
    @current_question = 0
  end

  def ask_question
    @questions[@current_question]
  end

  def score_user_answer(user_input)
    if user_input == 'Y'
      @user_answer += 2
    elsif user_input == 'S'
      @user_answer += 1
    end
    @current_question += 1
  end

  def finished?
    @current_question >= @questions.length
  end

  def user_answer
    @user_answer
  end
end
