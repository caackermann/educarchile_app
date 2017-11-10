class SurveyMailer < ApplicationMailer

  default from: "educarchile.app@gmail.com"

  def survey_email(teacher, student_email)
    @teacher = teacher
    mail(to: student_email, subject: 'Survey Email')
  	
  end

end
