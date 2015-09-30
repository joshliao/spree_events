class Spree::Event < ActiveRecord::Base
  scope :upcoming, ->(count=5) { where("starts_on >= :date", date: Date.today).limit(count) }
  scope :passed, ->(count=5) { where("starts_on <= :date", date: Date.today).limit(count) }
  default_scope { order('starts_on ASC') }

  acts_as_taggable
  
  def duplicate
    self.dup
  end
  
end
