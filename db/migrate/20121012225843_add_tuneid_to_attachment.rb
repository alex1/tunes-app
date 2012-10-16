class AddTuneidToAttachment < ActiveRecord::Migration
  def change
  	add_column :attachments, :tune_id, :integer
  end
end

