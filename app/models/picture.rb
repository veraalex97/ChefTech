class Picture < ActiveRecord::Base
	validates :title, presence: true
	has_many :reviews
	belongs_to :user
	has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	validates :image, attachment_presence: true
	acts_as_votable
end

