class Post < ActiveRecord::Base
  has_many :categories, through: :post_categories
  has_many :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories
  accepts_nested_attributes_for :users


  def categories_attributes=(attrs)
    attrs.values.each do |attr|
      # binding.pry
      unless attr[:name].empty?
        category = Category.find_or_create_by(attr)
        self.categories << category
      end
    end
  end

  def users_attributes=(attrs)
    attrs.values.each do |attr|
      # binding.pry
      unless attr[:username].empty?
        user = User.find_or_create_by(attr)
        self.users << user
      end
    end
  end
  
end
