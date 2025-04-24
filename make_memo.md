# Deviseについて
・


##　Userモデル作成/ログイン画面作成
・最初のログイン画面については
  「docker compose exec web rails g devise [モデル名]」で作成。(括弧は入りません)

・Deviseが担当するのは「認証(ログイン・サインアップ)などの部分」だけ。
  ※ログイン画面、サインアップ画面、パスワードリセット、ログアウト、アカウント編集画面

##　ログイン画面のファイルの出し方
・「localhost:3000/[モデル名]/sign_in」(括弧は入りません)にいけばログイン画面になるが、どこにビューファイルが？
  →初期状態ではビューの実体（ファイル）は app/views/ に存在せず、Deviseの「gemの中」で定義されてる。
  編集したい場合は「docker compose exec web rails g devise:views」で実際に作成しよう。

  コマンド実行後
    app/views/devise/ 以下に、すべてのDevise用ビューファイルがコピーされます！
    具体的には：
      app/views/devise/sessions/new.html.erb ← ログイン画面！
      app/views/devise/registrations/new.html.erb ← サインアップ画面！
      他にも password, unlock, confirmation なども展開される

