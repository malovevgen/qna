require 'rails_helper'

RSpec.describe Question, type: :model do
  it { should have_many(:answers).dependent(:destroy) }

  [:title, :body].each do |field| 
    it { should validate_presence_of field }

    it { should validate_uniqueness_of field }
  end
end
