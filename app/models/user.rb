class User < ApplicationRecord
    has_many :songs
    has_many :mixtapes
    has_many :songs, through: :mixtapes
    accepts_nested_attributes_for :songs
    accepts_nested_attributes_for :mixtapes
    has_secure_password
end
