class RemoveThumbnailUrlFromSamples < ActiveRecord::Migration[5.2]
  def change
    remove_column :samples, :thumbnail_url
  end
end
