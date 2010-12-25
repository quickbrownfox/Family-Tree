class AddForeignKeys < ActiveRecord::Migration
  def self.up
    add_foreign_key :men, :men, :column => :father_id
    add_foreign_key :men, :women, :column => :mother_id
    add_foreign_key :men, :women, :column => :wife_id

    add_foreign_key :women, :men, :column => :father_id
    add_foreign_key :women, :women, :column => :mother_id
    add_foreign_key :women, :men, :column => :husband_id
  end

  def self.down
    remove_foreign_key :men, :column => :father_id
    remove_foreign_key :men, :column => :mother_idd
    remove_foreign_key :men, :column => :wife_id

    remove_foreign_key :women, :column => :father_id
    remove_foreign_key :women, :column => :mother_idd
    remove_foreign_key :women, :column => :husband_id


  end
end
