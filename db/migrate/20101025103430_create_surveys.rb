class CreateSurveys < ActiveRecord::Migration
  def self.up
	create_table :surveys do |t|
		t.string :title
		t.string :description
		t.string :owner_mail
		t.string :auth_key
	end
  end

  def self.down
	drop_table :surveys
  end
end
