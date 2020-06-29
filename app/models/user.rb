class User < ApplicationRecord
    has_many :songs
    has_many :mixtapes
    has_many :songs, through: :mixtapes
    accepts_nested_attributes_for :songs
    has_secure_password
end
