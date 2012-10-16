class Tune < ActiveRecord::Base

	has_many :attachments, :dependent => :destroy

    attr_accessible :name, :attachments_attributes

    accepts_nested_attributes_for :attachments

end

