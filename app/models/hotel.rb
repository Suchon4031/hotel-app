class Hotel < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture

  validates :image, presence: true
  validates :name, presence: true
  validates :prefecture_id,numericality: {other_than: 1, message: "can't be blank"}
  validates :city, presence: true
end
