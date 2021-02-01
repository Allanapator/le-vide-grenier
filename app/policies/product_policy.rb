class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def create?
    user.admin?
  end

  def update?
    record.user == user || user.admin?
  end

  def show?
    true
  end

  def destroy?
    record.user == user || user.admin?
  end

  def search?
    true
  end
end
