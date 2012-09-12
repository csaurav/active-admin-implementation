class Owner < User
  # attr_accessible :name, :short_name

  # validates_uniqueness_of :name
  # validates_presence_of :name, :short_name

  has_one :team

  default_scope joins(:roles).where("roles_users.user_id = users.id and roles_users.role_id = ?",Role.by_name('team_owner').first.id)

end
