class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(attr)
    # binding.pry
    if attr != ''
      self.user = User.find_or_create_by(attr)
    end
  end
end
