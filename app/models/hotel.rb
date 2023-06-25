class Hotel < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  has_many :likes
  has_many :comments

  validates :images, presence: true
  validates :images, length: { minimum: 1, maximum: 6, message: "は1枚以上6枚以下にしてください" }
  validates :name, presence: true
  validates :prefecture_id,numericality: {other_than: 1, message: "can't be blank"}
  validates :city, presence: true

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end
end
