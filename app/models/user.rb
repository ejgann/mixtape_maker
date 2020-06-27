class User < ApplicationRecord
    has_secure_password
    has_many :songs
    has_many :mixtapes
    has_many :songs, through: :mixtapes
end
