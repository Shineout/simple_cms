class SectionEdit < ActiveRecord::Base
	belong_to :user
	belong_to :section
end
