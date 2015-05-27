class Ability
  include CanCan::Ability

  def initialize(user)
      user ||= User.new # guest user (not logged in)

      if user.role == "admin"
        can :manage, :all
        can :destroy, Request, Offer
    elsif user.role == "band"
        can :create, Request, user_id: user.id
        can :update, Request do |request|
            request.try(:user) == user 
        end
    else user.role == "host"
        can :read, :all
        can :create, Offer, user_id: user.id
        can :update, Offer do |offer|
            offer.try(:user) == user 
        end
    end
end
end
