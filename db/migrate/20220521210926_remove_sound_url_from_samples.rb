class RemoveSoundUrlFromSamples < ActiveRecord::Migration[5.2]
  def change
    remove_column :samples, :sound_url
  end
end
