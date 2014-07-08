class Guest < ActiveRecord::Base
  default_scope -> { order('name ASC') }
  belongs_to :invite

  validates :name, presence: true
end
