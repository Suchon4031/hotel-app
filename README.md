# アプリケーション名
StaySnap

# アプリケーション概要
ホテル情報を写真メインで共有することで、よりリアルな状態を確認できる。

# URL
https://staysnap.onrender.com

# テスト用アカウント
・Basic認証ID：SSuser<br>
・Basic認証パスワード：3031<br>
・メールアドレス：test1<br>
・パスワード：test1dayo<br>

# 利用方法
## ホテル情報投稿
1.トップページのヘッダーからユーザー新規登録を行う。<br>
2.投稿ボタンから、ホテル情報（写真、施設名、都道府県名、市町村名、コメント）を投稿する<br>

# アプリケーションを作成した背景
日頃ホテルを予約する際に、予約サイトで写真やプランを確認し予約することが多いが、予約サイトの写真はホテル側の宣伝素材であるため、実際に行ってみるとイメージと違ったということがあった。ユーザーが撮影した写真を共有すれば、よりリアルな様子がわかり、目的や理想に合った宿泊施設が選択できると考え、写真メインのホテル情報を投稿・共有するアプリケーションを開発することにした。

# 洗い出した要件
要件定義シート：https://docs.google.com/spreadsheets/d/1z9l7p-I2ble1Aj1ZKuQybeN_SegJ0scezeKFvtMFD1g/edit#gid=982722306
# 実装した機能についての画像やGIFおよびその説明
画像は6枚まで選択でき、投稿画面でプレビューが表示されます<br>
[![Image from Gyazo](https://i.gyazo.com/96c425eea3f476ac34b2663a2d9fafdb.jpg)](https://gyazo.com/96c425eea3f476ac34b2663a2d9fafdb)
投稿詳細ページにて、画像が複数枚ある場合はスライド表示されます<br>
[![Image from Gyazo](https://i.gyazo.com/5b8807d29421ba7eba3b07a55575b8a7.gif)](https://gyazo.com/5b8807d29421ba7eba3b07a55575b8a7)
# 実装予定の機能
・投稿編集画面でもプレビュー表示がされ、画像を一枚ずつ変更、削除できるようにする<br>
・施設の市町村を都道府県からの階層カテゴリーにし、投稿の絞り込みができるようにする<br>
・投稿へのコメント機能<br>
・お気に入り機能

# データベース設計
![staysnapER](https://github.com/Suchon4031/hotel-app/assets/130965140/7be14f99-37cc-43e7-bd86-863029700720)
# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/5b8807d29421ba7eba3b07a55575b8a7.gif)](https://gyazo.com/5b8807d29421ba7eba3b07a55575b8a7)
# 開発環境
・Ruby<br>
・Javascript<br>
・Jquery<br>
・Slick

# ローカルでの動作方法
以下のコマンドを順に実施<br>
% git clone https://github.com/Suchon4031/hotel-app<br>
% cd hotel-app<br>
% bundle install<br>
% yarn install

# 工夫したポイント
・投稿詳細ページにおいて、投稿された画像が複数枚ある場合は、一覧表示ではなくスライド表示になるようにしました。<br>
・落ち着いたイメージにしたかったため、ベーシックカラーを基本にしつつ、ぼやけた印象にならないようにしました。
