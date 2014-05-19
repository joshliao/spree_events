module Spree
  module Admin
    class EventsController < Spree::Admin::ResourceController

      helper_method :clone_object_url
      
      #
      def index
        @collection = Spree::Event.page(params[:page])
      end

      #
      def new
        @event = Spree::Event.new
      end

      #
      # def create
      #   p params
      #   super
      # end

      #
      def clone
        @new = @event.duplicate
        if @new.save
          flash[:success] = Spree.t('notice_messages.event_cloned')
        else
          flash[:success] = Spree.t('notice_messages.event_not_cloned')
        end
        redirect_to edit_admin_event_url(@new)
      end

      protected

      def clone_object_url resource
        clone_admin_event_url resource
      end
      
    end
  end
end

