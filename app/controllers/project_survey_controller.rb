class ProjectSurveyController < ApplicationController
	def new
		@students
	end

	def create
		@teacher=current_user
		@students_emails=params[:students_emails].split(",")

		@students_emails.each{|email| SurveyMailer.survey_email(@teacher, email).deliver}
			
		
		
	end

	
end
