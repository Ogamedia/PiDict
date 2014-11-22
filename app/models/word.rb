class Word < ActiveRecord::Base
	has_many :meanings
	

	validates_presence_of :term, :origin, :pronunciation
	validates_length_of :term, :origin, :pronunciation, :minimum => 3
	validates_uniqueness_of :term

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	has_attached_file :audio
	validates_attachment_content_type :audio, :content_type => ['audio/mp3','audio/mpeg', 'audio/ogg', 'audio/wav']
end
