class Tweet < ApplicationRecord
  validates :text, presence: true
  #textカラムが空欄だとエラーを出す
  belong_to :user
end
