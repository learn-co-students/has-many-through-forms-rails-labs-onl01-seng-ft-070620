class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user

  # def user_attributes=(attr)
  #   # binding.pry
  #   if attr != ''
  #     self.user = User.find_or_create_by(attr)
  #   end
  # end
end
