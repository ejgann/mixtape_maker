Mixtape_maker App

Song
    - belongs_to :user
    - has_many :mixtapes
    - has_many :users, through: :mixtapes

    - title
    - artist

User
    - has_many :songs
    - has_many :mixtapes
    - has_many :songs, through: :mixtapes

    - username
    - password_digest


Mixtape   * join table
    - belongs_to :user
    - belongs_to :song
    
    - tape_title
    - description