require 'rails_helper'

RSpec.describe Question, type: :model do
  it { should validate_presence_of :title }
  it { should validate_presence_of :body }
  # it 'validates presece of title' do
    # expect(Question.new(body: '123')).to_not be_valid
    # question = Question.new(body: '123')
    # expect(question).to_not be_valid
    # pending "add some examples to (or delete) #{__FILE__}"
    # expect(question.valid?).to be_falsey
  # end

  # it 'validates presece of body' do
    # expect(Question.new(title: '123')).to_not be_valid
  # end
end
