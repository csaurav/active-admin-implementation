class AddColumnToPlayer < ActiveRecord::Migration
  def change
  	add_column :players, :is_foreign_player, :boolean
  end
end
