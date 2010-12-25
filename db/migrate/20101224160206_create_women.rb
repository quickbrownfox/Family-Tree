class CreateWomen < ActiveRecord::Migration
  def self.up
    create_table :women do |t|
      t.string :first_name, :limit => 100
      t.string :last_name, :limit => 100
      t.date :birth_date
      t.date :dead_date
      t.text :about

      t.integer :mother_id
      t.integer :father_id
      t.integer :husband_id

      t.timestamps
    end
  end

  def self.down
    drop_table :women
  end
end
