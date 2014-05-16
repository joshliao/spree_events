class Spree::Event < ActiveRecord::Base
  scope :upcoming, -> { where("date >= :date", date: Date.today).order(:date) }
  scope :passed, -> { where("date <= :date", date: Date.today).order(:date) }
end
