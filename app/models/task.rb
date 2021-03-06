class Task < ActiveRecord::Base
		validates :title, presence: true,
                    length: { minimum: 5 }
   	validates	:text, presence: true,
    				length: { minimum: 5 }

		has_many :comments
		belongs_to :color
end
