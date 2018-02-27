class Question

  def initialize
    @a = rand(1...20)
    @b = rand(1...20)
    @answer = @a + @b
  end

  def show_question
    puts "What is #{@a} + #{@b}"
  end


  # def generate_question
  #   q = Question.new
  #   # puts q.new_question
  #   @answer = q.new_question
  # end

  #  def get_input(input)
  #   @input = input
  #   puts @input
  # end

  def check_answer?(input)
    if @answer == input
      return true
    else
      return false
    end
  end

end


