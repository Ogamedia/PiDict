class Meaning < ActiveRecord::Base
	belongs_to :word
#TODO make sure meaning when created can be entered only once
#TODO count meaning number for users
#meaning cannot be zero validates_numericality_of :meaning_number, :greater_than_or_equal_to => 1
	# def create_with_numbers(attr) #bring in the meaning attributes passed in from the form
	# 	meaning_number = meaning.try(&:meaning_number) || 1
	# 	@meaning = word
	# 	# meaning.meaning_number = meaning.meaning_number(:try) + 1
	# 	return meaning
	# end


end
