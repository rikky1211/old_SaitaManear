source "https://rubygems.org"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.2.2", ">= 7.2.2.1"
# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"
# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"
# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem "jsbundling-rails"
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"
# Use Redis adapter to run Action Cable in production
# gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

  # Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
  # gem "image_processing", "~> 1.2"


  # --------- 以下手動追加 --------
  # アプリケーションの文言を英語以外の別の1つの言語に翻訳する機能や、多言語サポート機能を簡単かつ拡張可能な方式で導入するためのフレームワークを提供します。
  gem "rails-i18n", "~> 7.0", ">= 7.0.10"

  # WardenをベースにしたRails向けの柔軟な認証ソリューションです。
  gem "devise"

  # Deviseはコントローラー、モデル、その他の領域でi18nをサポートしていますが、
  # 国際化されたビューはサポートしていません。devise-i18nは国際化をサポートします。
  # また、Deviseには実際の翻訳は含まれていません。devise-i18nはこれもサポートします。
  gem "devise-i18n"

  # Tailwind バージョンを3.3.1に固定。v4だと対応しているコンポーネントが少ないため
  gem "tailwindcss-rails"
  gem 'tailwindcss-ruby', '~> 3.4', '>= 3.4.17'

  # rubocop Ruby_Lintcheck
  gem "rubocop"

  # 環境変数を管理することができるgemです。(.envファイルで使用)
  gem "dotenv-rails"

# -------- ここまで --------


group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", require: false

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", require: false
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
end

gem "dockerfile-rails", ">= 1.7", group: :development
