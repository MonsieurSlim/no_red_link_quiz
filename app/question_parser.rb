class QuestionParser
  require 'csv'
  # def questions(input)
  #
  # end

  def questions
    q =  CSV.read("./public/questions.csv")
    q.shift
    q.group_by {|a| a[0]}
  end

  def usage
    CSV.read("./public/usage.csv")
  end

  def fetch_quiz(no_of_questions)
    questions
  end



end

a = QuestionParser.new
puts a.fetch_quiz(2)