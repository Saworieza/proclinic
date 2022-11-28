class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.accountant?
      can :manage, Payment, user_id: user.id
    elsif user.pharmacist?
      can :manage, Prescription, user_id: user.id
      can :manage, Diagnosis, user_id: user.id
    elsif user.labtech?
      can :manage, Lab, user_id: user.id
    elsif user.doc?
      can :manage, Patient, user_id: user.id
      can :manage, Kin, user_id: user.id
      can :manage, Appointment, user_id: user.id
      can :manage, Doctor, user_id: user.id
      can :manage, Department, user_id: user.id
      can :manage, Admission, user_id: user.id
      can :manage, Ward, user_id: user.id
    elsif user.admin?
      can :manage
    else
      can :read, :all
    end
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
