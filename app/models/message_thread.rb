class MessageThread < ActiveRecord::Base
  belongs_to :job
  belongs_to :user
  has_many :messages
end
