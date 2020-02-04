class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # any one can view any restaurant
      scope.all
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
