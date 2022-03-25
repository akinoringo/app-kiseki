# Kiseki

日々の頑張り(軌跡)を記録して、目標達成をサポートするアプリです。<br>

### こんな人におすすめ

- 達成したい目標はあるけれど、なかなか継続して頑張れない
- 目標達成に向けて日々頑張っているけれど、なかなか進歩が見られない
- 達成したい目標がたくさんあり、一つに集中して継続できない

### Kiseki の特徴

- 目標と目標達成期限を登録して、日々の積み上げを記録するだけだから簡単
- ほかの人の目標や軌跡が確認できるからモチベーションが上がる
- 一度に登録できる目標は３つまでだから、本当に達成したい目標に向けて頑張れる

### 使い方

1. 目標と目標達成期限を登録する
2. 日々の軌跡(内容/反省点/取組時間)を記録する
3. 日々の軌跡を積み上げて目標を達成しよう！

## URL

https://app-kiseki.com

## 使用技術

- フロントエンド

  - Vue.js 2.6.12
  - jQuery 3.4.1
  - HTML/CSS/MDBootstrap

- バックエンド

  - PHP 7.4.16
  - Laravel 6.20.22
  - PHPUnit 9.5.4

- インフラ

  - CircleCI
  - Docker 20.10.5 / docker-compose 1.28.5
  - Nginx 1.12
  - MySQL 8.0.20
  - AWS
    - ECS/Fargate
    - ECR
    - RDS
    - S3
    - Route53
    - ACM
    - ALB
    - VPC
    - IAM

- その他
  - Sublime Text(エディタ)
  - draw.io(画面設計)
  - Photoshop(ロゴ作成)
  - Canva(ロゴ作成)

## 機能一覧

- ユーザー登録

  - 新規登録、プロフィール編集機能
  - プロフィール画像登録機能(AWS S3)
  - 画像トリミング、保存機能(Intervention/Image)
  - ゲストログイン機能

- 目標投稿機能(CRUD)

  - 目標の新規作成、詳細表示、削除機能

- 軌跡投稿機能(CRUD)

  - 目標達成に向けての頑張り(軌跡)の新規作成、一覧表示、削除

- コメント機能

- 積み上げ回数/時間の可視化(vue-chartjs によるグラフ機能)

- SNS シェア機能(vue-social-sharing による SNS シェア機能)

- タグ入力(vue-tag-input)/検索機能

- ページネーション機能

- 部分検索機能

  - 軌跡のタイトルや内容による検索絞り込み

- フォロー機能(非同期通信)
- いいね機能(非同期通信)

- バッジの獲得機能

  - 継続日数や時間に応じてバッジを獲得できる機能

- フラッシュメッセージ表示機能
  - 目標や軌跡の新規作成、編集、削除、バッジの獲得時にフラッシュメッセージを表示

## アプリのクローン / アクセスの確認

$: on terminal, [app]: on app container

$ git clone https://github.com/akinoringo/app-kiseki.git

- ディレクトリへの移動
  $ cd app-kiseki
- 環境設定(docker-compose)ファイルのコピー
  $ cp .env-example .env

- コンテナの立ち上げ
  $ docker-compose up -d

- コンテナの中に入る
  $ docker-compose exec app bash

- composer インストール
  [app] composer install

- 環境設定(Laravel)ファイルのコピー
  [app] cp .env.example .env

- キーの設定
  [app] php artisan key:generate

- マイグレーション
  [app] php artisan migrate --seed

- storage リンクの生成
  [app] php artisan storage:link

- アクセスの確認
  http://localhost

## アプリ使用画面

### トップページ

<img width="700" alt="Screen Shot of kiseki's view of mypage" src="https://user-images.githubusercontent.com/73481750/119249623-f69edf80-bbd4-11eb-921a-4f402ebbc1d3.png">

<img width="700" alt="Screen Shot of kiseki's view of mypage" src="https://user-images.githubusercontent.com/73481750/117590745-c6365a80-b16b-11eb-97f2-c9ad731911ea.png">

### SNS シェア/ランキング/みんなの投稿一覧

<img width="700" alt="Screen Shot of kiseki's view of mypage" src="https://user-images.githubusercontent.com/73481750/119249649-36fe5d80-bbd5-11eb-8a4d-a1f6a0c3345a.png">

### タグ検索機能

<img width="700" alt="Screen Shot of kiseki's view of mypage" src="https://user-images.githubusercontent.com/73481750/119249801-95780b80-bbd6-11eb-8c8e-29cdfbe0e3cc.png">

### コメント/いいね機能

<img width="700" alt="Screen Shot of kiseki's view of mypage" src="https://user-images.githubusercontent.com/73481750/119249827-d1ab6c00-bbd6-11eb-9e70-d4254f6256fd.png">

### マイページ/フォロー/フォロワー

<img width="700" alt="Screen Shot of kiseki's view of mypage" src="https://user-images.githubusercontent.com/73481750/119249704-a411f300-bbd5-11eb-8561-2f2f19011b4e.png">

### 獲得バッジの表示

<img width="700" alt="Screen Shot of kiseki's view of mypage" src="https://user-images.githubusercontent.com/73481750/119312057-d17da000-bcac-11eb-943c-ba94eb5fb91a.png">

### 積み上げのグラフ表示

<img width="700" alt="Screen Shot of kiseki's view of mypage" src="https://user-images.githubusercontent.com/73481750/119334748-6e990280-bcc6-11eb-9523-daf7fb8c6417.png">

### 目標入力画面/タグ追加機能

<img width="700" alt="Screen Shot of kiseki's view of mypage" src="https://user-images.githubusercontent.com/73481750/119249751-1551a600-bbd6-11eb-8f75-8bbc0da3ef9d.png">

### 軌跡入力画面

<img width="700" alt="Screen Shot of kiseki's view of mypage" src="https://user-images.githubusercontent.com/73481750/119249771-429e5400-bbd6-11eb-98cb-c391be3ed774.png">

## インフラ構成図

<img width="700" alt="Cloud Image" src="https://user-images.githubusercontent.com/73481750/160122414-138063ba-1346-4ecb-a487-fdecc0c0f50e.jpg">
