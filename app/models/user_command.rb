class UserCommand < ActiveRecord::Base
  attr_accessible :frequency, :history_id, :uniq_command

  belongs_to :history
end
