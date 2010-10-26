class Survey < ActiveRecord::Base
	validates_presence_of :title, :owner_mail, :auth_key , 
		:message => "nie może być pusty"
	
	validates_length_of :auth_key , :minimum => 4 , 
		:too_short => "musi mieć co najmniej {{count}} znaków"
	
	validates_format_of :owner_mail, 
		:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, 
		:message => "Niepoprawny adres e-mail"

	
	before_create { |survey| survey.title.capitalize!}
	before_save { |survey| survey.layout_id = 1 if survey.layout_id == nil }
end
