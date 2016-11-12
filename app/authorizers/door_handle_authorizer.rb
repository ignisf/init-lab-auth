class DoorHandleAuthorizer < ApplicationAuthorizer
  def self.creatable_by?(user)
    user.has_role?(:trusted_member) or user.has_role?(:board_member)
  end
end
