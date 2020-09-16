class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(user_attributes)
    if user_attributes[:username] != ""
      # self.build_user(user_attributes) # doesn't check if inputted username already exists
      self.user = User.find_or_create_by(username: user_attributes[:username])
    end
  end

end
