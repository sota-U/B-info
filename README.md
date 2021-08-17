# README

## アプリケーション名  : **B-info**
: ”B”はBasketBallの頭文字を取り、バスケットボールに関する情報を投稿していただくwebアプリケーションとなっています。
## -アプリケーション概要-
: バスケットボールプレイヤーに簡単にさまざまな情報を手に入れる、また情報を発信していく機会を持ってもらうためのアプリケーションになっています。

ユーザーは新規登録を行うだけで全ての機能を利用してもらえます。バスケットボールに関するニュースを取り上げた投稿やスキルに関する投稿など行うことが出来ます。

これからいいね機能やフォロー機能を作成することで投稿する側にメリットを作っていきたいです。

## -本番環境のURL-
heroku : https://b-info.herokuapp.com/ 

## -登録済みのユーザーのログイン情報-
Email: test@hoge.com

Pass: 56565656tr

## -Basic認証のID、Pass情報-
ID: admin
Pass: 2222


## -利用方法-
アプリのURL先に飛ぶとユーザーの投稿が一覧として表示される画面に遷移します。

"SIGNUP"から新規登録を行い、その後情報を投稿できるようになります。

そこでバスケットに関するニュースやスキルの説明を投稿して他の利用者に見てもらうことが出来ます。

もしくは悩みなどを投稿して、コメントで解決策を教わるなどバスケットボールプレイヤーとしての見識や実力の向上のサポートになると考えています。

## -目指した課題解決-
1番の目的として、バスケットをもっと広く深く楽しんでほしいという願いの元アプリケーションを作成しました。
具体的には
* バスケをプレイしてはいるものの、NBAであったりインターハイなどでバスケットを見るなどの楽しみ方を知らない人にその楽しみを知る機会を持ってもらう。
* 今までバスケットをしたことがなく、見ることで十分だという人に実際にプレイするきっかけを持ってもらう。
* 部活動であったりサークルであったり一般のチーム内での連絡であったりやりとりを行う場所を持ってもらう。
* バスケットボールに関して情報得ること、また発信することでよりバスケットボールへの取り組みに対する意欲を高める。
* コミュニティが発展していくこと(もしくはニュース機能自体を導入)でどこよりも早くバスケットボールに関する情報を得ることができるようになる。
* 日記機能やカレンダー機能の作成で自分のバスケットボール活動に関する管理を行う場所を提供し、より意欲的な活動を行なってもらう。

などの考えがあります。

目指したのは "**バスケットボールしてるならこのアプリは使ってるよね**" という場所です。

## -洗い出した要件-

| 実装機能             | 要件   |
| ------------------ | ------ | 
| ユーザー管理機能(完了)           | ・ユーザー情報を新しく登録することができる<br>・ユーザーが登録しているとき、ログインすることができる。<br>・ログインしていれば自分、もしくは他のユーザーの情報詳細画面に遷移することができる。<br>・ログインしていれば自分のユーザー情報を編集することができる。<br>・ログインしていれば自分のユーザー情報を削除することができる。
| 情報投稿機能(完了)             | ・投稿した情報は一覧として表示され、タイトルと画像に関してはログインの有無に関わらず誰でも見ることができる。<br>・ログインしていれば情報の投稿を行うことができる。<br>・ログインしていれば自分もしくは他のユーザーの情報詳細画面に遷移することができる。<br>・ログインしていれば、自分の情報のみ編集することができる。<br>・ログインしていれば、自分の情報のみ削除を行うことができる。| 
| コメント機能(実装中) | ・ログインしていれば、情報詳細画面にてコメントをすることができる。<br>・コメントを行なったユーザーの名前からユーザー詳細画面に遷移することができる。<br>・コメントが非同期で投稿できる(未実装)。 | 
| チャット機能(未実装)          | ・新規登録済みのユーザー間でチャットルームを持つことができる。<br>・ユーザー名からユーザーの詳細画面に映ることが出来る。<br>・画像を送信することができる。 |
| いいね機能(未実装)       | ・ログインしているユーザーは各情報に一回のみいいねを押すことができる。<br> ・ログインしているユーザーは情報のいいねの数、誰がいいねを押したかを見ることができる。<br>・ユーザーは自分の詳細画面からいいねに関する情報が記載された表を確認することが出来る|
| フォロー機能(未実装)  | ・ログインしているユーザーは他のユーザーをフォローすることができる。<br>・ユーザーは詳細画面からフォローしている人、フォロワーの数を確認することができる。<br>・ユーザー詳細のフォロー、フォロワーの数をクリックするとリストが表示され、ユーザー名もしくはアイコンをクリックするとそのユーザーの詳細画面に移ることができる。 |

## -実装した機能に関して-
・トップページは情報一覧ページになっています。

![aaaaaaaa](https://user-images.githubusercontent.com/86213526/129698987-8125afee-cfde-42bf-8322-ec896d90163b.gif)

・ログイン、新規登録を右上のリンクから行います。

![125523c95dbaac8b92213f7d599dc46d (3)-min](https://user-images.githubusercontent.com/86213526/129703643-852f8a54-be5d-4074-b20b-9ff2794e24ba.gif)

・実際の新規登録の様子

![c1f1bdf5c76b371b4e7b7bdc38a27477-min](https://user-images.githubusercontent.com/86213526/129704212-71eb622f-b12a-4990-9fbc-e8d87fdcb413.gif)


・実際のログインの様子

![c9cfcc64f4d0651a2cd3d50c2aa0eeb0](https://user-images.githubusercontent.com/86213526/129701677-3fe6300f-b443-4a72-9a05-a4f28e8da18d.gif)

・情報投稿の様子(ヘッダーのPOSTリンクから行えます。)

![6d2bf196d1bf3c0948fa7255a7f11b9d](https://user-images.githubusercontent.com/86213526/129701816-1c76b0f1-67c5-4b33-aeef-4f00f50ba1e9.gif)

・情報詳細への遷移の様子(本人)

![d0bd5a4aa1add76d6113f05173049aed](https://user-images.githubusercontent.com/86213526/129702055-1e30ea04-4d5c-4a43-afbb-180915866f24.gif)


・情報詳細への遷移の様子(他のユーザー)

![f94b3e68bdf42cdd06c0e7a0c9ef3b7e](https://user-images.githubusercontent.com/86213526/129702205-fb7d4d53-222a-448e-a6d1-fb9623a12367.gif)

・情報編集画面への遷移

[![Image from Gyazo](https://i.gyazo.com/f47d7c2fd9fb7d2360928c507c7785ee.gif)](https://gyazo.com/f47d7c2fd9fb7d2360928c507c7785ee)

・情報削除の様子

![2da9bc12009f76bc716496d7347888c2](https://user-images.githubusercontent.com/86213526/129702422-2012a6dc-ea66-40ff-8f7b-c757a8578e3c.gif)


・コメント投稿の様子

[![Image from Gyazo](https://i.gyazo.com/9296a823895e40e117514baba5dee7d9.gif)](https://gyazo.com/9296a823895e40e117514baba5dee7d9)

・コメント欄のユーザー名からユーザーの詳細画面に遷移する様子

[![Image from Gyazo](https://i.gyazo.com/4b9ae635ed1a77f910a8400089726dfd.gif)](https://gyazo.com/4b9ae635ed1a77f910a8400089726dfd)


## 実装予定の機能

・コメントの非同期通信

・チャット機能

・いいね機能

・フォロー機能

## -DB設計-

## usersテーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| last_name          | string | null: false               |
| first_name         | string | null: false               |
| last_name_reading  | string | null: false               |
| first_name_reading | string | null: false               |
| birthday           | date   | null: false               |



### Association

- has_many :tweets
- has_many :comments
- has_many :rooms
- has_many :room_users
- has_many :messages


## tweetsテーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| title              | string     | null: false                    |
| text               | text       | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments
- has_one_attached :image

## likesテーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| user               | references | null: false, foreign_key: true |
| tweet              | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :tweets

## commentsテーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | text       | null: false                    |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :tweet


## rooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many :room_users
- has_many :users, through: :room_users
- has_many :messages

## room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

## **ローカルで利用するための情報**

**-GitHub上のアプリケーションURL-**
<br>: https://github.com/sota-U/B-info 

**-アプリケーション環境-**
<br>**Ruby version** : 2.6.5p114 
<br>**RubyGems version** : 3.0.3 
<br>**Ruby on Rails version** : 6.0.4
<br>**Heroku version** : 7.56.1
<br>**Mysql version** : 5.6.51
<br>**Git version** : 2.30.1
