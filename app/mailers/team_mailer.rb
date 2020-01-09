class TeamMailer < ApplicationMailer
  def change_owner_email(team)
    @team = team
    @user = User.find(@team.owner_id)
    mail(
      subject: 'チームリーダ変更のお知らせ',
      to: @user.email,
      from: 'taskleaf@example.com',
    )
  end
end
