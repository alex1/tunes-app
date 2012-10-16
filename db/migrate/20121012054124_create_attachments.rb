class CreateAttachments < ActiveRecord::Migration
  def up
    create_table :attachments do |t|
      t.string :file_file_name
      t.string :file_content_type
	    t.integer :file_file_size
 
      t.timestamps
    end
  end
 
  def down
    drop_table :attachments
  end
end