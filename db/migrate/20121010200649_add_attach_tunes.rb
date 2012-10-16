class AddAttachTunes < ActiveRecord::Migration
  def self.up
    add_attachment :tunes, :attach
  end

  def self.down
    remove_attachment :tunes, :attach
  end
end