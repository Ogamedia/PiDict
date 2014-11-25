class Meaning < ActiveRecord::Base
	belongs_to :word
	


#TODO make sure meaning when created can be entered only once
#TODO count meaning number for users
#meaning cannot be zero validates_numericality_of :meaning_number, :greater_than_or_equal_to => 1

end
