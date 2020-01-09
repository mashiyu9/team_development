class DestroymailerMailer < ApplicationMailer
  def destroy_mail(contact)
    @contact = contact
    @contact.team.users.each do |x|
      mail to: "#{x.email}", subject: "削除の確認メール"
    end
  end
end
