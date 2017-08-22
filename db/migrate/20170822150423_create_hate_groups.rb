class CreateHateGroups < ActiveRecord::Migration
  def change
  	create_table :hate_groups do |t|
      t.string :name, null: false
      t.string :type, null: false
      t.string :description, null: false
      t.string :email, null: false

      t.timestamps
    end
  end
end
