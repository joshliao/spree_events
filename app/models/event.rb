class Event < ActiveRecord::Base
  scope :upcoming, -> { where("date >= :date", date: Date.today).order(:date).limit(5) }
end
