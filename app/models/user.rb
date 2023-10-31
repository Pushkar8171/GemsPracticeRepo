class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable 
  
         def admin?
          user_type == 'admin'
         end


         after_initialize  :set_default_user_type

         private

         def set_default_user_type
          self.user_type ||= ''
        end
end
