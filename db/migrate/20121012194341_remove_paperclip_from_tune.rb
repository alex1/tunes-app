class RemovePaperclipFromTune < ActiveRecord::Migration
  def up
  	remove_column :tunes, :attach_file_name
    remove_column :tunes, :attach_content_type
    remove_column :tunes, :attach_file_size
    remove_column :tunes, :attach_updated_at

  end

  def down
  	  add_column :tunes, :attach_file_name,    :string
	  add_column :tunes, :attach_content_type, :string
	  add_column :tunes, :attach_file_size,    :integer
 	  add_column :tunes, :attach_updated_at,   :datetime
  end
end
