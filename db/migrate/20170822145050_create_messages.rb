class CreateMessages < ActiveRecord::Migration
  def change
  	create_table :messages do |t|
      t.string :content, null: false
      t.string :user_id, null: false, default: 1 
      
      t.timestamps
    end
  end
end
