class Place < ApplicationRecord
  searchkick
  mount_uploader :image, ImageUploader

  has_many :reviews

  validates :name, :city, :state, presence: true

  validates :state, format: {with: /\A[A-Z]{2}\z/,
    message: "must be in format: PA"}

  validates :website, format: {with: /\Ahttps?:\/\/.*\z/,
    message: "must start with http:// or https://"}

  validates :city, format: {with: /\A[a-zA-z]\z/,
    message: "city can only contain letters"}
end
