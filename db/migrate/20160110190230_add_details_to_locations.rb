class AddDetailsToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :details, :text
  end
end
