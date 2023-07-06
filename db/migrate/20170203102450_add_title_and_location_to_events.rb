class AddTitleAndLocationToEvents < ActiveRecord::Migration[4.2]
  def change
    add_column :events, :title, :string
    add_column :events, :location, :string
  end
end
