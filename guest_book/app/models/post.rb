class Post < ActiveRecord::Base
  attr_accessible :address, :contact_no, :email, :fname, :lname

  #validates :fname, :lname, :address, presence: true
  #validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  #validates :contact_no,  length: { is: 11 }, numericality: { only_integer: true }

def self.search(search)
  if search
    find(:all, :conditions => ['lname LIKE ?', "%#{search}%"])
    find(:all, :conditions => ['fname LIKE ?', "%#{search}%"])
    find(:all, :conditions => ['email LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end




  end
