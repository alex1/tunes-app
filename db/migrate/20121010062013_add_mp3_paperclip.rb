class AddMp3Paperclip < ActiveRecord::Migration
  def up
  	add_column :tunes, :attach_file_name,    :string
	  add_column :tunes, :attach_content_type, :string
	  add_column :tunes, :attach_file_size,    :integer
 	  add_column :tunes, :attach_updated_at,   :datetime
  end

  def down
  	remove_column :tunes, :attach_file_name
    remove_column :tunes, :attach_content_type
    remove_column :tunes, :attach_file_size
    remove_column :tunes, :attach_updated_at
  end
end
