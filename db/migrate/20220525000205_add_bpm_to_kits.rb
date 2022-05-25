class AddBpmToKits < ActiveRecord::Migration[5.2]
  def change
    add_column :kits, :bpm, :integer
  end
end
