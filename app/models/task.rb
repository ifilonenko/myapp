# == Schema Information
#
# Table name: tasks
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  list_id    :integer          default(0)
#  mark       :boolean
#  created_at :datetime
#  updated_at :datetime
#

class Task < ActiveRecord::Base
    belongs_to :list
    default_scope -> { order('created_at DESC') }
	validates :list_id, presence: true
	validates :content, presence: true, length: { maximum: 140 }
	validates :list_id, presence: true
end
