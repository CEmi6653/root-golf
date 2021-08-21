require 'rails_helper'

RSpec.describe Review, type: :model do
  before do
    user = FactoryBot.create(:user)
    tweet = FactoryBot.create(:tweet)
    @review = FactoryBot.build(:review, user_id: user.id, tweet_id: tweet.id)
  end

  context 'コメントの保存ができる時' do
    it "content,user_id,tweet_idがあると保存できる" do
      expect(@review).to be_valid
    end
  end

  context 'コメントが保存できない場合' do
    it "contentが空の場合保存できない" do
      @review.content = ''
      @review.valid?
      expect(@review.errors.full_messages).to include("Content can't be blank")
    end
  end

end
