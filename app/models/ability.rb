class Ability
  include CanCan::Ability

  def initialize(user)
       user ||= User.new # guest user (not logged in)

       if user.try(:role) == "admin"
         can    :manage, :all
       elsif user.role == "host"
         can :manage, Offer, user_id: user.id
         can :edit, Offer
         cannot :manage, Request
       elsif user.role == "band"
         can :manage, Request, user_id: user.id
         can :edit, Request
         cannot :manage, Offer
       else
         can    :read, :all
       end
     end
   end