class Spree::Event < ActiveRecord::Base
  scope :upcoming, ->(count=5) { where("datetime >= :date", date: Date.today).limit(count) }
  scope :passed, ->(count=5) { where("datetime <= :date", date: Date.today).limit(count) }
  default_scope { order('datetime ASC') }

  acts_as_taggable
  
  def duplicate
    self.dup
  end
  
end
