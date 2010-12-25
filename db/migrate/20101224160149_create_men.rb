class CreateMen < ActiveRecord::Migration
  def self.up
    create_table :men do |t|
      t.string :first_name, :limit => 100
      t.string :last_name, :limit => 100
      t.date :birth_date
      t.date :dead_date
      t.text :about
      
      t.integer :mother_id
      t.integer :father_id 
      t.integer :wife_id

      t.timestamps
    end
  end

  def self.down
    drop_table :men
  end
end
