class RemoveTuneFormats < ActiveRecord::Migration
  def up
  	remove_column :tunes, :path_to_mp3_slow
    remove_column :tunes, :path_to_mp3_fast
  	remove_column :tunes, :path_to_ogg_slow
    remove_column :tunes, :path_to_ogg_fast
    remove_column :tunes, :path_to_wav_slow
    remove_column :tunes, :path_to_wav_fast
  end

  def down
  	add_column :tunes, :path_to_mp3_slow, :string
    add_column :tunes, :path_to_mp3_fast, :string
  	add_column :tunes, :path_to_ogg_slow, :string
    add_column :tunes, :path_to_ogg_fast, :string
    add_column :tunes, :path_to_wav_slow, :string
    add_column :tunes, :path_to_wav_fast, :string
  end
end
