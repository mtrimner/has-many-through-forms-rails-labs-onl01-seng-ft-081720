class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user

   def user_attributes=(user_attributes)
   
    if user_attributes[:username] != ""
      new_user = User.find_or_create_by(user_attributes)
      self.user = new_user
    end
  end
end
