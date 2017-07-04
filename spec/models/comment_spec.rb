# spec/models/comment_spec.rb
require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'validations' do
    subject(:comment) { Comment.new }
    before { comment.valid? }

    [:post, :body].each do |attribute|
      it "should validate presence of #{attribute}" do
        expect(comment.errors[attribute].size).to be >= 1
        expect(comment.errors.messages[attribute]).to include "can't be blank"
      end
    end
  end
end