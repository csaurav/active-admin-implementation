class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name, :null => false
      t.string :email, :null => false
      t.string :goc, :null => true
      t.references :team	
      t.timestamps
    end
  end
end
