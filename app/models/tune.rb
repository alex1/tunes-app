class Tune < ActiveRecord::Base

	belongs_to :user

	has_many :attachments, :dependent => :destroy

    attr_accessible :name, :attachments_attributes

    accepts_nested_attributes_for :attachments

end

