class User < ApplicationRecord
    before_save {self.email.downcase}
    has_many :articles

    validates :username, presence: true, uniqueness: {case_sensitive: false}, length: {minimum:3, maximum: 30} 
    VALID_EMAIL_REGEX = /\A[\W+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :eamil, presence: true, uniqueness: {case_sensitive: false}, length: { maximum: 105},

format: {with: VALID_EMAIL_REGEX}
    # belongs_to :user
    has_secure_password

end
