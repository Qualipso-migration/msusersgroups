class AddPrimaryKeyIdToGraphsViewers < ActiveRecord::Migration[4.2]
  def change
  	add_column :graphs_viewers, :id, :primary_key
  end
end
