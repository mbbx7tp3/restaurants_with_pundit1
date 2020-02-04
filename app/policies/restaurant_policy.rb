class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # any one can view any restaurant
      scope.all
      scope.where(user: user) #this means that the current user can only view the restaurants that he has created, filters out to specifc users
    end
  end

  def new?
    return true # anybody can create a restaurant
  end

  def create?
    return true
  end

  def edit?
    # return true if you did create it and false if you did not
  record.user == user

  end

  def update?
    record.user == user
  end

end
