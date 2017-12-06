# Preview all emails at http://localhost:3000/rails/mailers/survey_mailer
class SurveyMailerPreview < ActionMailer::Preview
  def survey_email_preview
    SurveyMailer.survey_email(User.first)
  end
end
