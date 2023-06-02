class Hotel < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture

  validates :images, presence: true
  validates :images, length: { minimum: 1, maximum: 3, message: "は1枚以上3枚以下にしてください" }
  validates :name, presence: true
  validates :prefecture_id,numericality: {other_than: 1, message: "can't be blank"}
  validates :city, presence: true
end
