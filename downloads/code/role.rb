class Role < ActiveRecord::Base
  has_many :user_roles
  has_many :users, :through => :user_roles

  def self.seed_data!
      Role.where(
          name: "Admin"
          ).first_or_create

      Role.where(
          name: "Contributor"
      ).first_or_create

      Role.where(
          name: "Contestant"
      ).first_or_create
  end

end