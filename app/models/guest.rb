class Guest < ActiveRecord::Base

  belongs_to :invite

  validates :name, presence: true
end
