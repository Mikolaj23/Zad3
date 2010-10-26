class SurveysController < ApplicationController
	def index
		@surveys = Survey.all
	end

	def show
		@survey = Survey.find(params[:id])
	end

	def new
		@survey = Survey.new
	end

	def create
		@survey = Survey.new(params[:survey])
		if @survey.save 
			redirect_to :action => 'show', :id => @survey.id
		else 
			render :action => 'new'
		end

	end

	def edit
		@survey = Survey.find(params[:id])
	end

	def update
		@survey = Survey.find(params[:id])
		if @survey.update_attributes(params[:survey])
			redirect_to @survey
		else
			render :action => "edit"
		end 
	end
end
