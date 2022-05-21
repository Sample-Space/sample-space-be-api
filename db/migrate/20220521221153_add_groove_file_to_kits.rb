class AddGrooveFileToKits < ActiveRecord::Migration[5.2]
  def change
    add_column :kits, :groove_file, :string
  end
end
