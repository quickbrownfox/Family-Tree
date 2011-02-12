class Man < ActiveRecord::Base
#  belongs_to :Man, :foreign_key => :father_id
  validates :first_name, :presence => true
  validates :last_name, :presence => true
end
