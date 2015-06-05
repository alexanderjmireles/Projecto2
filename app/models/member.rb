class Member < ActiveRecord::Base
	attr_accessible :title, :content

	validates :title, presence: true, uniqueness: true
	validates :content, presence: true

	def self.search(query)

		where("title like ?",  "%#{query}%")
	end
end
