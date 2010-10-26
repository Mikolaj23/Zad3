mespace :bootstrap do
	desc "Add default layuot"
	task :default_layer => :environment do
		Layout.create( :id => 1, :label => 'Standardowy')
	end
end
