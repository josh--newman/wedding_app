class RsvpMailer < ActionMailer::Base
  default to:   "josh.newman4390@gmail.com",
          from: "notifications@caitlanandjosh.com"

  def rsvp_update_email(invite)
    @invite = invite
    mail(subject: "#{@invite.code} has RSVP'd")
  end
  # handle_asynchronously :rsvp_update_email
end
