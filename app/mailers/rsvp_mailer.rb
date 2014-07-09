class RsvpMailer < ActionMailer::Base
  default to:   "josh.newman4390@gmail.com"
          from: "josh.newman4390@gmail.com"

  def rsvp_update_email(invite)
    @invite = invite
    mail(subject: "Someone has RSVP'd")
  end
end
