class Section < ActiveRecord::Base

	belongs_to :page
	has_many :section_edins
end
