class Invite < ActiveRecord::Base

  has_many :guests

  validates :code, presence: true
  accepts_nested_attributes_for :guests
end
