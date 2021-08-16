require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
    sleep 0.1
  end


  describe 'ユーザー新規登録' do
    context '登録できる場合' do
      
      it 'nicknameとemail, passwordとpassword_confirmation, play_histry_idとplay_style_id, bith_place_idがあれば登録できる' do
        expect(@user).to be_valid
      end

      it 'passwordが6文字以上あれば登録できる' do
        @user.password = '123abc'
        @user.password_confirmation = '123abc'
        expect(@user).to be_valid
      end
    end



    context '登録できない場合' do
      
      it 'nickname:空だと登録できない' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end

      it 'email:空だと登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end

      it '@が入っていないと登録できない' do
        @user.email = "aaaa.com"
        @user.valid? 
        expect(@user.errors.full_messages).to include("Email is invalid")
      end
    

      it '重複したemailが存在する場合登録できないこと' do
        @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Email has already been taken')
      end

      it 'password:空だと登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end

      it 'password:半角英語のみだと登録できない' do
        @user.password = 'cccccc'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is invalid")
      end

      
      it 'password:半角数字のみだと登録できない' do
        @user.password = '123456'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is invalid")
      end

      it 'password:全角英数字だと登録できない' do
        @user.password = '１２３ASD'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is invalid")
      end


      it 'passwordが5文字以下であれば登録できないこと' do
        @user.password = '123ab'
        @user.password_confirmation = '123ab'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
      end

      it 'passwordとpassword_confiramtionが不一致では登録できないこと' do
        @user.password = '123abc'
        @user.password_confirmation = '123abcd'
        @user.valid? 
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end

      it 'password_confirmation:空だと登録できない' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end

      it 'play_style_idが空だと登録できない' do
        @user.play_style_id = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Play style can't be blank")
      end

      it 'play_style_idが1の{--}だと登録できない' do
        @user.play_style_id = 1
        @user.valid?
        expect(@user.errors.full_messages).to include("Play style can't be blank")
      end
      it 'play_histry_idが空だと登録できない' do
        @user.play_histry_id = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Play histry can't be blank")
      end
      it 'play_histry_idが1の{--}だと登録できない' do
        @user.play_histry_id = 1
        @user.valid?
        expect(@user.errors.full_messages).to include("Play histry can't be blank")
      end
      it 'bith_place_idが空だと登録できない' do
        @user.bith_place_id = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Bith place can't be blank")
      end
      it 'bith_place_idが1の{--}だと登録できない' do
        @user.bith_place_id = 1
        @user.valid?
        expect(@user.errors.full_messages).to include("Bith place can't be blank")
      end

    end


  end
end
