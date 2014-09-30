class Team < ActiveRecord::Base
	has_many :comments
	validates :name, presence: true,
                    length: { minimum: 5 }
end
