class Article < ActiveRecord::Base
	has_many :categories

	scope :active, where('active = ?', true)
  	scope :alphabetical, order('title')


 	validates_presence_of :title
 	validates_presence_of :content
end
