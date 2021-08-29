# アプリケーション名

 Root-Golf

# アプリケーションの概要
失敗しないコース選び

予約サイトには書いていなくて、ホームページには書いてある。
もしくは予約サイトにもホームページにも書いてない情報があったとき
ゴルフ場の情報を一つにまとめ、多くのユーザーに情報を見てもらい
ユーザーの意見を取り入れより正確な情報を提供できます。

# 利用方法

管理者はゴルフ場情報の登録や変更、削除ができ、
不要と感じたコメントも削除できます。
管理者のマイページにコメント欄一覧で直近のコメントから見れるようになっております。

ユーザーはゴルフ場検索やゴルフ場の概要を確認できます。
ログインユーザーにコメントしてもらうことで
よりユーザーの生の声が聞ける様になリます。
マイページにお気に入りしたゴルフ場を表示できるできます。


# URL 
EC2
http://18.180.41.245/


# テスト用アカウント

管理者
メールアドレス: admin@example.jp
パスワード: 1111aaaa

ログインユーザー(golf30)
メールアドレス:west@west
パスワード:111qqq

# 制作背景(意図的)
自分自身がゴルフ場のコース選びに失敗し、
周りのゴルファーたちにも失敗した経験がないか聞いてみました。
過去にコース選びに失敗したことがあり、
それ以降念入りに調べてからコースを予約するようになりました。


# 目指した課題解決

多くのゴルフユーザーは予約サイト(楽天ゴルフなど)を使ってゴルフ場を決めていて、
実際予約するときの流れとしては、予約サイトとゴルフ場のホームページ、googleマップ
この三つを見ていることがほとんどです。スムーズに調べてもらえるようするために
初心者の人が見ても扱いやすいサービスにしています。
予約サイトに載っていない情報があってコース選びに失敗しないようにしてもらいます。
ユーザーが気になっている情報をわかりやすくみてもらうためのサービスです。

# DEMO

## トップページ
![9771e8607d1e1d94cc08ed7d1f183e00](https://user-images.githubusercontent.com/86937544/131246318-916b13cd-94f3-42bd-8821-2f4c0f936a77.png)
<img width="1440" alt="98d3d73ee6ae845b346d65a5ddf4b850" src="https://user-images.githubusercontent.com/86937544/131246384-16639eb9-b6d3-4faf-8240-481af43d6c73.png">
![05f26f3b9c4135ed8ca4d1f42f255750](https://user-images.githubusercontent.com/86937544/131246426-f1e5716c-b6fc-406c-b48f-2f49c761e781.png)



## 新規登録ページ
![1a76766cfb2eeb30f0c97d664d7a78f7](https://user-images.githubusercontent.com/86937544/131246580-d5b2ab24-82c8-404d-b14b-14273985c279.png)
![ffedbb29b0627278ecaffb3865512554](https://user-images.githubusercontent.com/86937544/131246599-b95bdb9a-23b0-40de-9b53-b4ceef27d6a7.png)


## 詳細表示ページ(未ログインユーザー)
![logout-show](https://user-images.githubusercontent.com/86937544/131246807-6f6a7fd6-c178-4285-83a6-633d136d272f.png)

![logout-show1](https://user-images.githubusercontent.com/86937544/131246828-e8028c10-c4da-44db-9c26-2f99f73afe5f.png)

![logout-show2](https://user-images.githubusercontent.com/86937544/131246844-d2e38ee5-2899-4427-9592-873e55f58549.png)

![logout-show3](https://user-images.githubusercontent.com/86937544/131246860-e8c80db6-20b3-4546-b5df-c3e97b01a306.png)

## 詳細表示ページ(ログインユーザー)
![login-show](https://user-images.githubusercontent.com/86937544/131247011-02b1c760-ba6b-4e60-935c-39f3ff627a6c.png)


![login-show1](https://user-images.githubusercontent.com/86937544/131247035-ad9d68bd-1a80-4f86-9b45-6a16f16fbed0.png)

## 詳細表示ページ(管理者)

![login-show-admin](https://user-images.githubusercontent.com/86937544/131247044-b9d711b2-1371-46cc-ac7e-8554b851f07e.png)

![login-show-admin1](https://user-images.githubusercontent.com/86937544/131247057-22f07cd7-63e0-4a62-b6f8-ef9154b68ff8.png)


## 編集削除機能(管理者)
## コメント機能(管理者だけが削除できます)
## お気に入り機能
## マイページ機能
## 検索機能


# 洗い出した要件																			
															
##	ユーザー管理機能	
どの様なプレースタイルのユーザーなのか	deviseを用いて新規登録、ログイン、ログアウトの機能を実装する	ゴルフ場の詳細やお気に入り、レビューをしてもらうためにログインしてもらう	

##	ゴルフ場投稿機能
	管理者がゴルフ場を登録しユーザーに見てもらうため	ゴルフ場の新規登録(新規投稿登録機能を実装する)画像はアクティブストレージを用いる。	管理者がゴルフ場を登録することで一般ユーザーとログインユーザーにに見てもらうため																			

##	ゴルフ場詳細機能	
ゴルフ場の情報が細かく見れる様にするため	ゴルフ場名、住所、電話番号、インターからのアクセス、ゴルフ場説明(プレー環境(広さとカート以外の移動があるのかないのか)、カート情報(自動なのか、スコア表あるのか)、食事情報)、ホールの難易度、各ホールごとの写真、食事の写真、ゴルフ場の写真、ユーザーが投稿(ゴルフ場)の詳細をみれる様にするための機能															

##	レビュー機能
	実際に行ってことがあるユーザーにゴルフ場を評価してもらう	投稿に対してコメント機能の実装	ログインユーザーがゴルフ場に対してコメントができる											


## ゴルフ場編集機能	
管理者限定でゴルフ場の詳細を編集する機能	管理者のみゴルフ場の編集をするため。	一般ユーザーが勝手に編集しない様にするため、管理者がゴルフ場情報に変化があった際に変更してもらうため																		

## ユーザー編集機能	
ユーザーの情報を更新できる様にするため	ユーザー編集機能の実装	プレースタイルが変わる可能性があるため																			

## コメント削除機能	
管理者限定でコメントを削除するため	コメント削除機能の実装	管理者から見て不要なコメントがあった場合に削除するため	

##	マイページ
マイページを用意することでユーザーがお気に入りにしているゴルフ場の一覧を見れる	マイページの実装	お気に入りにしたゴルフ場を一覧で見れる、自分がどのゴルフ場にコメントしたのかがわかる																				
## お気に入り機能	
お気に入り機能を用いることでユーザー自身の気に入っているゴルフ場がすぐ確認できる	お気に入り機能の実装 ゴルフ場をお気に入りでき、マイページにゴルフ場の写真が載る	ユーザー自身がよく使っているゴルフ場や気になっているゴルフ場見れるようになる	

					
##	ゴルフ場検索機能
	ユーザーが気になるゴルフ場を検索できる様にする	ゴルフ場(投稿)の検索機能を実装	ユーザーがこのサイト以外から気になるゴルフ場を知ったときにすぐ検索できるようにする。




# 実装した機能についての説明

##　ユーザー管理機能
ユーザーによってできることを分けるために実装しました。

管理者ユーザーはサイトを管理している人であって、ゴルフ場の登録と、編集、削除、ユーザーのコメント削除ができるようにするためです。
ログインユーザーは自分が気になったゴルフ場をお気に入りができ、お気に入りをするとマイページにお気に入り一覧が見れるようになりすぐ確認できるようにしております。ログインユーザーはコメントができますのでその情報に対して変更点や間違いがあったときにコメントしてもらいます。

## 投稿機能

管理者がゴルフ場の情報を登録するための機能になります。

## コメント機能
ログインユーザーが情報の修正箇所をコメントできるようにしました。
コメントしてもらうことによってより管理者が正確な情報を把握できるようにしております。

##　お気に入り機能
お気に入りをすることでマイページにお気に入りにしたゴルフ場を確認できます。

## ゴルフ場検索機能
ゴルフ場の名前から検索し、検索結果が出たものに関しては表示されます。

## 今後実装したい機能
ransackを用いた検索機能

マップ機能と動画機能
GoogleマップやYouTubeの情報を詳細ページに載せれるようにする目的。


# 工夫したポイント
実装をスムーズにするために、githubでタスク化をし実装毎に管理できるようにしました。
細かく区分けすることによって絡み合ったエラーが出ることもなく、
実装毎に本番環境で確認していましたので、すぐに修正ができ効率よく実装できました。
モデルの単体テストを実装したフェースに応じて実行したこと。



# ローカルでの動作方法

・管理者がゴルフ場の情報を登録できること。
・管理者が情報を編集削除できること。
・管理者がコメントを削除できること。
・ログインユーザーはお気に入りができること。
・ログインユーザーがコメントできること。
・全ユーザーが一覧と詳細ページが見れること。

# 使用技術
HTML/CSS/Jquery/Javascript/Ruby/Ruby_on_Rails/MySQL
Github/AWS/S3/Heroku/EC2//Visual Studio Code






# テーブル設計

## userテーブル

| Column              | Type     | Options          |
|---------------------|----------|------------------|
| nickname            | string   | null: false      |
| email               | string   | null: false      |
| encrypted_password  | string   | null: false      |
| play_style_id       | integer  | null: false      |
| play_histry_id      | integer  | null: false      |
| bith_place_id       | integer  | null: false      |


### Association


-has_many: favorites
-has_many: tweets, through: :favorites
-has_many: tweets
-has_many: reviews


## golfテーブル

| Column                  | Type       | Options           |
|-------------------------|------------|-------------------|
| golf_course_name        | string     | null: false       |
| postal_code             | string     | null: false       |
| bith_place_id           | integer    | null: false       |
| municipalities          | string     | null: false       |
| address                 | string     | null: false       |
| golf_course_number_id   | integer    | null: false       |
| business_hours_id       | integer    | null: false       |
| play_environment_id     | integer    | null: false       |
| golf_course_difficult_id| integer    | null: false       |
| average_amount_id       | integer    | null: false       |
| travel_time_id          | integer    | null: false       |
| explanation             | integer    | null: false       |
| cart_information_id     | integer    | null: false       |
| user                    | references | foreign_key: true |

### Association

belongs_to :user
has_many: reviews
has_many: favorites
has_many: users, through: :favorites


## favoriteテーブル

| Column                  | Type       | Options                         |
|-------------------------|------------|---------------------------------|
| user                    | references | null: false , foreign_key: true |
| golf                    | references | null: false , foreign_key: true |


### Association

belongs_to: user
belongs_to: tweet


## reviewテーブル

| Column                  | Type          | Options                         |
|-------------------------|---------------|---------------------------------|
| user                    | references    | null: false foreign_key:true    |
| tweet                   | references    | null: false foreign_key:true    |
| rate                    | float         |                                 | 
| content                 | text          | null: false                     |


### Association

belongs_to: user
belongs_to: tweet
