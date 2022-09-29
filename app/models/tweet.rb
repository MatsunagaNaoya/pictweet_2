class Tweet < ApplicationRecord
  validates :text, presence: true
  #textカラムが空欄だとエラーを出す
  belongs_to :user
  has_many :comments  # commentsテーブルとのアソシエーション

  def self.search(search)
    if search != ""
      Tweet.where('text LIKE(?)', "%#{search}%")
    else
      Tweet.all
    end
  end
end
