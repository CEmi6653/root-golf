require 'rails_helper'

RSpec.describe Tweet, type: :model do
  before do
    user = FactoryBot.create(:user)
    @tweet = FactoryBot.build(:tweet, user_id: user.id)
  end

  describe '投稿の保存' do
    context '投稿の情報が保存できる場合' do
      it "画像、ゴルフ場名、ゴルフ場説明、郵便番号、都道府県、市区町村、番地、電話番号、営業時間、プレー環境、コース難易度、予約サイトの平均金額、ICからの時間、カート情報があれば保存できる" do
        expect(@tweet).to be_valid
      end
    end

    context '保存できない場合' do

      it "画像がないと保存できない" do
        @tweet.image = nil
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Image can't be blank")

      end

      it "ゴルフ場名がないと保存できない" do
        @tweet.golf_course_name = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Golf course name can't be blank")
      end
      
      it "ゴルフ場の説明がないと保存できない" do
        @tweet.explanation = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Explanation can't be blank")
      end
      it '郵便番号が空だと保存できない' do
        @tweet.postal_code = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Postal code can't be blank")
      end

      it '郵便番号は半角文字列でないと保存できない' do
        @tweet.postal_code = '１２３−４５６７'
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Postal code is invalid. Include hyphen(-)")
      end
      
      it '郵便番号はハイフンなしでは保存できない' do
        @tweet.postal_code = '1234567'
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Postal code is invalid. Include hyphen(-)")
      end
       
      it '都道府県が空だと保存できない' do
        @tweet.bith_place_id = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Bith place can't be blank")
      end

      it '都道府県のidが1だと登録できない' do
        @tweet.bith_place_id = 1
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Bith place can't be blank")
      end

      it '番地が空だと保存できない' do
        @tweet.address = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Address can't be blank")
      end

      it 'ゴルフ場の電話番号が空だと保存できない' do
        @tweet.golf_course_number = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Golf course number can't be blank")
      end    
      it '10桁以上11桁以内でないと保存できない' do
        @tweet.golf_course_number = '123456789'
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Golf course number is invalid")
      end

      it '半角数値でないと保存できない' do
        @tweet.golf_course_number = '１２３４５６７８９０'
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Golf course number is invalid")
      end

      it '営業時間が空だと登録できない' do
        @tweet.business_hours = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Business hours can't be blank")        
      end

      it "プレー環境が空だと保存できない" do
        @tweet.play_environment_id = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Play environment can't be blank")
        
      end

      it "プレー環境id:1の{--}の場合保存ができない" do
        @tweet.play_environment_id = 1
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Play environment can't be blank")
      end
      it "コース難易度が空だと保存できない" do
        @tweet.golf_course_difficult_id = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Golf course difficult can't be blank")
        
      end

      it "コース難易度のid:1の{--}の場合保存ができない" do
        @tweet.golf_course_difficult_id = 1
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Golf course difficult can't be blank")
      end
      it "予約サイトの平均金額が空だと保存できない" do
        @tweet.average_amount_id = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Average amount can't be blank")
        
      end

      it "予約サイトの平均金額id:1の{--}の場合保存ができない" do
        @tweet.average_amount_id = 1
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Average amount can't be blank")
      end
      it "ICからの移動時間が空だと保存できない" do
        @tweet.travel_time_id = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Travel time can't be blank")
        
      end

      it "ICからの移動時間id:1の{--}の場合保存ができない" do
        @tweet.travel_time_id = 1
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Travel time can't be blank")
      end
      it "カート情報が空だと保存できない" do
        @tweet.cart_information_id = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Cart information can't be blank")
        
      end

      it "カート情報がid:1の{--}の場合保存ができない" do
        @tweet.cart_information_id = 1
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Cart information can't be blank")
      end


      it 'ユーザーが紐付いていなければ投稿できない' do
        @tweet.user = nil
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include('User must exist')
      end

      
    end
  end

end
