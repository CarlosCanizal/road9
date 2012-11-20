class User < ActiveRecord::Base
  attr_accessible :address1, :address2, :email, :home, :lastname,:macAddress, :mobile, :name
  validates :name, :presence=>true
  validates :lastname, :presence=>true
  validates_numericality_of :mobile, :only_integer => true, :allow_blank => true, :message => "tiene un formato invalido."
  validates_numericality_of :home, :only_integer => true, :allow_blank => true, :message => "tiene un formato invalido."
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX }

end
