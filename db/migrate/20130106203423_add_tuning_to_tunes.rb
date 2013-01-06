class AddTuningToTunes < ActiveRecord::Migration
  def change
  	add_column :tunes, :tuning, :string
  end
end
