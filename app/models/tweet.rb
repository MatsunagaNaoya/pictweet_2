class Tweet < ApplicationRecord
  validates :text, presence: true
  #textカラムが空欄だとエラーを出す
  belongs_to :user
  has_many :comments  # commentsテーブルとのアソシエーション
end
