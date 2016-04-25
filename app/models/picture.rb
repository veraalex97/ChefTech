class Picture < ActiveRecord::Base
	validates :title, presence: true
	has_many :reviews
	has_many :votes, dependent: :destroy
end
