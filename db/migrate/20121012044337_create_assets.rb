class CreateAssets < ActiveRecord::Migration

  def up
  	create_table "assets" do |t|
		t.integer "tune_id"
		t.integer "file_id"
  	end
  end

  def down
  	drop_table :assets
  end
  
end
