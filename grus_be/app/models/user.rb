class User < ApplicationRecord
  has_many :tasks

  def self.profile(username)
    user = User.find_by(username: username)

    return nil if !user

    {
      first_name: user.first_name,
      middle_name: user.middle_name,
      last_name: user.last_name,
      motto: user.motto,
      username: user.username
    }
  end
end