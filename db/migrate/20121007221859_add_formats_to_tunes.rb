class AddFormatsToTunes < ActiveRecord::Migration
  def change
    add_column :tunes, :path_to_ogg_slow, :string
    add_column :tunes, :path_to_ogg_fast, :string
    add_column :tunes, :path_to_wav_slow, :string
    add_column :tunes, :path_to_wav_fast, :string
  end
end
