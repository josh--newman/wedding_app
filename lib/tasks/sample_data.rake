namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do

    # Create sample invites
    Invite.create!(code: 'asdjkl')
    Invite.create!(code: '123456')
    Invite.create!(code: 'zxcvbn')

    # Create sample guests
    Guest.create!(name: "Josh",    invite_id: 1)
    Guest.create!(name: "Caitlan", invite_id: 1)
    Guest.create!(name: "Jiji",    invite_id: 1)

    Guest.create!(name: "Kyle",    invite_id: 2)
    Guest.create!(name: "Mel",     invite_id: 2)

    Guest.create!(name: "Sue",     invite_id: 3)
    Guest.create!(name: "Tony",    invite_id: 3)

  end
end
