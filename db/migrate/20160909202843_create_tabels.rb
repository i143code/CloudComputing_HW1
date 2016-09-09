class CreateTabels < ActiveRecord::Migration
  def change
    create_table :tabels do |t|
    	t.integer :number
    	t.timestamps 
    end
  end
end
