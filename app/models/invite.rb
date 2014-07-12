class Invite < ActiveRecord::Base
  default_scope -> { order('updated_at DESC') }
  has_many :guests

  validates :code, presence: true
  accepts_nested_attributes_for :guests
end
