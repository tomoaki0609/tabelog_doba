class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :products
  has_many :reviews

  has_attached_file :avatar,
                    styles: { medium: "300×300#", thumb: "100×100#"}
  validates_attachment_content_type :avatar,
                                      content_type: ["image/jpg","image/jpeg","image/png"]
  validates :nickname, presence: true
  validates :email, presence: true
end
