class CreateMixtapes < ActiveRecord::Migration[6.0]
  def change
    create_table :mixtapes do |t|
      t.string :tape_title
      t.text :description
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :song, null: false, foreign_key: true

      t.timestamps
    end
  end
end
