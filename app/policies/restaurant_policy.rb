class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    return true # anybody can create a restaurant
  end

  def create?
    return true
  end

end
