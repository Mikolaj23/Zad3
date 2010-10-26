class CreateLayouts < ActiveRecord::Migration
  def self.up
	create_table :layouts do |t|
		t.string :label
	end
  end

  def self.down
	drop_table :layouts
  end
end
