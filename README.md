# アプリケーション名

 Root-Golf

# アプリケーション概要
ゴルフ場の情報を一つにまとめ、多くのユーザーに情報を見てもらう

# URL 
http://18.180.41.245/

# テスト用アカウント
管理者
ログインユーザー

# 利用方法

管理者はゴルフ場情報の登録や変更、削除ができ、
不要と感じたコメントも削除できる。

ユーザーはゴルフ場検索やゴルフ場の概要を確認できる。
ログインユーザーにコメントしてもらうことで
より生の声が聞ける様になる。

# 目指した課題解決
多くのゴルフユーザーは予約サイト(楽天ゴルフなど)を使ってゴルフ場を決めていて、
実際予約するときの流れとしては、予約サイトとゴルフ場のホームページ、googleマップ
この三つを見ていることがほとんどなのでスムーズに調べてもらえるようするため。
特にゴルフを始めたばかりの方は相場や情報を調べるのに時間がかかるため、
初心者の人が見ても扱いやすいサービスにするため。

# 洗い出した要件																			
															
##	ユーザー管理機能	
どの様なプレースタイルのユーザーなのか	deviseを用いて新規登録、ログイン、ログアウトの機能を実装する	ゴルフ場の詳細やお気に入り、レビュー評価をしてもらうためにログインしてもらう	

##	ゴルフ場投稿機能
	管理者がゴルフ場を登録しユーザーに見てもらうため	ゴルフ場の新規登録(新規投稿登録機能を実装する)画像はアクティブストレージを用いる。	管理者がゴルフ場を登録することで一般ユーザーとログインユーザーにに見てもらうため																			

##	ゴルフ場詳細機能	
ゴルフ場の情報が細かく見れる様にするため	ゴルフ場名、住所、電話番号、インターからのアクセス、ゴルフ場説明(プレー環境(広さとカート以外の移動があるのかないのか)、カート情報(自動なのか、スコア表あるのか)、食事情報)、ホールの難易度、各ホールごとの写真、食事の写真、ゴルフ場の写真、Googleマップを用いて場所を表現、必要ならSNSなどの実践記事(youtubeやインスタグラム、Twitterなど)の記載	ユーザーが投稿(ゴルフ場)の詳細をみれる様にするための機能															

##	レビュー機能
	実際に行ってことがあるユーザーにゴルフ場を評価してもらう	投稿に対してコメント機能の実装	ログインユーザーがゴルフ場に対してコメントができる											

## 星評価機能の実装	
ゴルフ場に対して星評価してもらうための機能	レビュー(コメント)に星評価機能を実装	amazon,食べログみたいに評価を見やすくするため	

## ゴルフ場編集機能	
管理者限定でゴルフ場の詳細を編集する機能	管理者のみゴルフ場の編集をするため。	一般ユーザーが勝手に編集しない様にするため、管理者がゴルフ場情報に変化があった際に変更してもらうため																		
## ユーザー編集機能	
ユーザーの情報を更新できる様にするため	ユーザー編集機能の実装	プレースタイルが変わる可能性があるため																			

## コメント削除機能	
管理者限定でコメントを削除するため	コメント削除機能の実装	管理者から見て不要なコメントがあった場合に削除するため	

##	マイページ
マイページを用意することでユーザーがお気に入りにしているゴルフ場の一覧を見れる	マイページの実装	お気に入りにしたゴルフ場を一覧で見れる、自分がどのゴルフ場にコメントしたのかがわかる																				
## お気に入り機能	
お気に入り機能を用いることでユーザー自身の気に入っているゴルフ場がすぐ確認できる	お気に入り機能の実装　ゴルフ場をお気に入りでき、マイページにゴルフ場の写真が載る	ユーザー自身がよく使っているゴルフ場や気になっているゴルフ場見れるようになる	

					
##	ゴルフ場検索機能
	ユーザーが気になるゴルフ場を検索できる様にする	ゴルフ場(投稿)の検索機能を実装	ユーザーがこのサイト以外から気になるゴルフ場を知ったときにすぐ検索できるようにする。

## SNS認証	
ユーザーの登録方法を増やすため	SNSアカウント（Googleアカウン、Facabookアカウント）を利用したログイン方法を選択肢として追加する	"・ユーザーアカウントの登録方法を「手打ち入力」「Googleアカウントを利用」「Facabookアカウントを利用」の3つから選べるようにする
・SNSアカウントを選択した場合、既にパスワードは入力されてる状態で表示される																			
## 複数画像投稿機能
	より詳細を画像で見てもらうため	複数の画像を用いれるように実装	ユーザーがゴルフ場の情報を画像で確認できる様になるため																				

# 実装した機能についての説明

# 実装予定の機能
ゴルフ場詳細機能
レビュー機能
お気に入り機能	
ゴルフ場検索機能
星評価機能の実装	



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
-has_many: golfs, through: :favorites
-has_many: reviews


## golfテーブル

| Column                  | Type      | Options           |
|-------------------------|-----------|-------------------|
| golf_course_name        | string    | null: false       |
| postal_code             | string    | null: false       |
| bith_place_id           | integer   | null: false       |
| municipalities          | string    | null: false       |
| address                 | string    | null: false       |
| golf_course_number_id   | integer   | null: false       |
| business_hours_id       | integer   | null: false       |
| play_environment_id     | integer   | null: false       |
| golf_course_difficult_id| integer   | null: false       |
| average_amount_id       | integer   | null: false       |
| travel_time_id          | integer   | null: false       |
| explanation             | integer   | null: false       |
| cart_information_id     | integer   | null: false       |
| user                    | reference | foreign_key: true |

### Association

has_many: reviews
has_many: favorites
has_many: users, through: :favorites


## favoriteテーブル

| Column                  | Type      | Options                         |
|-------------------------|-----------|---------------------------------|
| user_id                 | reference | null: false , foreign_key: true |
| golf_id                 | reference | null: false , foreign_key: true |


### Association

belongs_to: user
belongs_to: golf


## reviewテーブル

| Column                  | Type      | Options                         |
|-------------------------|-----------|---------------------------------|
| user_id                 | reference | null: false, foreign_key: true  |
| golf_id                 | reference | null: false, foreign_key: true  |
| play_style              | integer   |                                 |
| rate                    | float     |                                  
| content                 | integer   | null: false                     |


### Association

belongs_to: user
belongs_to: golf


# ローカルでの動作方法

