class AddSequenceToKits < ActiveRecord::Migration[5.2]
  def change
    add_column :kits, :sequence, :string
  end
end
