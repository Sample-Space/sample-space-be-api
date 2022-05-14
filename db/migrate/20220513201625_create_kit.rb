class CreateKit < ActiveRecord::Migration[5.2]
  def change
    create_table :kits do |t|
      t.string :name
      t.integer :kick
      t.integer :snare
      t.integer :hh_closed
      t.integer :hh_open
      t.integer :melody
      t.integer :texture
      t.integer :one_shot_1
      t.integer :one_shot_2
      t.string :groove_url
      t.timestamps
    end
  end
end
