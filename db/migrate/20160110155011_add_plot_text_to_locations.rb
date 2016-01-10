class AddPlotTextToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :plot_text, :text
  end
end
