module Spree
  module Admin
    class EventsController < Spree::Admin::ResourceController

      def index
        @collection = {
          :upcoming => ::Spree::Event.upcoming,
          :passed => ::Spree::Event.passed
        }
      end
      
    end
  end
end

