class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def new?
    !user.nil?
  end

  def create?
    !user.nil?
  end

  def edit?
    record.user == user
  end

  def update?
    edit?
  end

  def destroy?
    create?
  end
end
