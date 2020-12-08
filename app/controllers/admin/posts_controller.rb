class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  enum role: { normal: 0, staff: 1 }
  
  def admin_check
    if user_signed_in? && current_user.role == "staff"
        riderect_to new_admin_product_path
    else
        render action: :edit
        flash[:alert] = "管理者画面です"
    end
 end
    
end