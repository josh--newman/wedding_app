class Invite < ActiveRecord::Base

  has_many :guests

  validates :code, presence: true
end
