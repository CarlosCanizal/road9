class User < ActiveRecord::Base
  attr_accessible :address1, :address2, :email, :home, :lastname,:macAddress, :mobile, :name
  validates :name, :presence=>true
  validates :lastname, :presence=>true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

end
