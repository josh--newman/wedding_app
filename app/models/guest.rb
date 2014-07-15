class Guest < ActiveRecord::Base
  default_scope -> { order('name ASC') }
  belongs_to :invite, touch: true

  validates :name, presence: true

  def self.num_attending
    count = 0

    self.all.each do |guest|
      if guest.created_at < guest.updated_at && guest.is_coming
        count += 1
      end
    end

    count
  end #num_attending

  def self.num_dietary
    count = 0

    self.all.each do |guest|
      if guest.created_at < guest.updated_at && guest.has_dietary
        count += 1
      end
    end

    count
  end #num_dietary

  def is_attending
    if created_at < updated_at
      is_coming ? "yes" : "no"
    end
  end #is_attending

  def has_special_diet
    if created_at < updated_at
      has_dietary ? "yes" : "no"
    end
  end #has_special_diet

end
