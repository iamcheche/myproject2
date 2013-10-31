class Product < ActiveRecord::Base
  attr_accessible :category, :id, :name, :price

def self.search(search)
  if search
    find(:all, :conditions => ['id LIKE ?', "%#{search}%"])
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    find(:all, :conditions => ['category LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end
end
