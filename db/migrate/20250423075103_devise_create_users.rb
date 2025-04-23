# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[7.2]
  def change
    ## idカラムを「id: false」で作成しないようにする
    create_table :users, id: false do |t|
      ## idカラムをuuid型にして主キーにする。デフォルトはランダムで入れてね
      t.uuid :id, primary_key: true, default: -> { "gen_random_uuid()" }

      ## Database authenticatable(データベース認証可能)
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable(回復可能)
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable(記憶可能)
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      ## 手動追加
      t.string :name, null: false
      t.string :avatar
      t.integer :role, null: false, default: 0
      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
