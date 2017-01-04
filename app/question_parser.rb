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
    return "Number must be less that zero" unless no_of_questions > 0
    array = []
    questions.each do |k, v|
      v.each do |value|
        array << value[4]
      end
    end
    array.take(no_of_questions).join(",")
  end





end

a = QuestionParser.new
puts a.fetch_quiz(2)

# {"1"=>[["1", "Nouns", "1", "Common Nouns", "1", "0.7"], ["1", "Nouns", "1", "Common Nouns", "2", "0.6"], ["1", "Nouns", "2", "Abstract Nouns", "3", "0.8"], ["1", "Nouns", "3", "Proper Nouns", "4", "0.2"], ["1", "Nouns", "3", "Proper Nouns", "5", "0.5"], ["1", "Nouns", "3", "Proper Nouns", "6", "0.4"]],
# "2"=>[["2", "Verbs", "4", "Action Verbs", "7", "0.9"], ["2", "Verbs", "4", "Action Verbs", "8", "0.1"], ["2", "Verbs", "5", "Transitive Verbs", "9", "0.3"], ["2", "Verbs", "5", "Transitive Verbs", "10", "0.6"], ["2", "Verbs", "5", "Transitive Verbs", "11", "0.4"], ["2", "Verbs", "6", "Reflexive Verbs", "12", "0.2"]]}