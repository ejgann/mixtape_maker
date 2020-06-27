class User < ApplicationRecord
    has_many :songs
    has_many :mixtapes
    has_many :songs, through: :mixtapes
    has_secure_password
end
