# == Schema Information
#
# Table name: lists
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :string(255)
#  user_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class List < ActiveRecord::Base
	belongs_to :user
	has_many :tasks, dependent: :destroy
	default_scope -> { order('created_at DESC') }
	validates :title, presence: true, length: { maximum: 69 }
	validates :description, presence: true, length: { maximum: 140 }
	validates :user_id, presence: true
end
