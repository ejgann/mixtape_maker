Mixtape_maker App

Song
    - belongs_to :user
    - has_many :mixtapes
    - has_many :users, through: :mixtapes
        - accepts_nested_attributes_for :mixtapes

    - title
    - artist

User
    - has_many :songs
    - has_many :mixtapes
    - has_many :songs, through: :mixtapes
        - accepts_nested_attributes_for :songs

    - username
    - password_digest


Mixtape   * join table
    - belongs_to :user
    - belongs_to :song
    
    - tape_title
    - description