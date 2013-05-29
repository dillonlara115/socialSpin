class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
  					:first_name, :last_name, :user_name, :fav_bands,  :image, :about
  # attr_accessible :title, :body

  mount_uploader :image, ImageUploader

  def full_name
    first_name + " " + last_name
  end

  letsrate_rater
end
