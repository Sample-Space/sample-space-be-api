class CreateSamples < ActiveRecord::Migration[5.2]
  def change
    create_table :samples do |t|
      t.string :name
      t.string :source_name
      t.string :sound_url
      t.string :thumbnail_url
      t.string :description
      t.string :info_url
      t.timestamps
    end
  end
end
