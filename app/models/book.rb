class Book < ActiveRecord::Base
  attr_accessible :description, :price, :title

  def self.search(search)
  if search
    find(:all, :conditions => ['description LIKE ? or :price LIKE ? or :title LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end

end
