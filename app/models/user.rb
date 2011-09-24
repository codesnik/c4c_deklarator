class User < ActiveRecord::Base
  include SentientUser
  include RoleModel

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  validates_uniqueness_of :email, :case_sensitive => false

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable, :confirmable, :lockable, :timeoutable

  roles_attribute :roles_mask
  roles :admin, :manager

  def display_name
    self.email
  end
end
