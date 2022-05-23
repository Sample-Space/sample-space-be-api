class RemoveGrooveUrlFromKits < ActiveRecord::Migration[5.2]
  def change
    remove_column :kits, :groove_url
  end
end
