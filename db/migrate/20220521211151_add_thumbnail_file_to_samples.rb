class AddThumbnailFileToSamples < ActiveRecord::Migration[5.2]
  def change
    add_column :samples, :thumbnail_file, :string
  end
end
