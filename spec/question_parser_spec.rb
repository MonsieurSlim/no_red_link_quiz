require '../app/question_parse'

RSpec.describe QuestionParser do
  describe ".question" do
    it "returns an array of arrays from csv" do
      expect(QuestionParser.new.questions.class).to eq(Array)
    end
  end
end