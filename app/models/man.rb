class Man < ActiveRecord::Base
  belongs_to :Man, :foreign_key => :father_id
  belongs_to :Woman, :foreign_key => :mother_id
  validates :first_name, :presence => true
  validates :last_name, :presence => true
end
