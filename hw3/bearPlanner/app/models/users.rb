class Users < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true #Makes sure all useres have a unique name
  validates :name, :presence => true
end
