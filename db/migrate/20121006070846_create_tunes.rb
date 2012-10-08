class CreateTunes < ActiveRecord::Migration
  def change
    create_table :tunes do |t|
      t.string :name
      t.string :path_to_mp3_slow
      t.string :path_to_mp3_fast

      t.timestamps
    end
  end
end
