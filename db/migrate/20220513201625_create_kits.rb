class CreateKits < ActiveRecord::Migration[5.2]
  def change
    create_table :kits do |t|
      t.string :name
      t.string :kick
      t.string :snare
      t.string :hh_closed
      t.string :hh_open
      t.string :melody
      t.string :texture
      t.string :one_shot_1
      t.string :one_shot_2
      t.string :groove_url
      t.timestamps
    end
  end
end
