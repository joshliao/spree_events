# Anonymous or "normal" users are granted read access to events.
# Only administartors may manage events.
module Spree
  class EventAbilityDecorator
    include CanCan::Ability
    def initialize(user)
      if user && user.respond_to?(:has_spree_role?) && user.has_spree_role?('admin')
        can :manage, ::Spree::Event
      else
        can [:index, :read], ::Spree::Event
      end
    end
  end
end
