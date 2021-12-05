class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :prototypes
         has_many :comments
         has_many :comments, dependent: :destroy

         #nameカラムが空の状態ではDBに保存できないということ
         validates :name, presence: true
         validates :profile, presence: true
         validates :occupation, presence: true
         validates :position, presence: true

        #  belongs_to :user
end