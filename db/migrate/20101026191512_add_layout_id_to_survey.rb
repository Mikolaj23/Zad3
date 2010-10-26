class AddLayoutIdToSurvey < ActiveRecord::Migration
  def self.up
	add_column :surveys, :layout_id, :integer
  end

  def self.down
	remove_column :surveys, :layout_id
  end
end
