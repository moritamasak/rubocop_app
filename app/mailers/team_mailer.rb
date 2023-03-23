class TeamMailer < ApplicationMailer
  
    def assign_mail(email, password)
      @email = email
      @password = password
      mail to: @email, subject: I18n.t('views.messages.complete_registration')
    end
  
    def team_mail(user, team)
      @user = user
      @team = team

      mail to: @user.email, subject: "オーナー権限が付与されました"
    end
  
end
