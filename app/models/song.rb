class Song < ApplicationRecord
  belongs_to :user
  has_many :mixtapes
  has_many :users, through: :mixtapes
  accepts_nested_attributes_for :mixtapes

end
