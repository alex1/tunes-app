class AddVersionNameToAttachments < ActiveRecord::Migration
  def change
  	add_column :attachments, :version_name, :string
  end
end
