class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, reject_if: proc {|attributes| attributes['user_id'].blank?}

  # def user_attributes=(attr)
  #   # binding.pry
  #   if attr != ''
  #     self.user = User.find_or_create_by(attr)
  #   end
  # end
end
