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

require 'spec_helper'

describe Task do

  let(:user) { FactoryGirl.create(:user) }
  before { @task = user.list.tasks.build(content: "Lorem ipsum", mark: false) }
    
  subject { @task }


end
