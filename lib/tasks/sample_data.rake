namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do

    # Create sample invites
    Invite.create!(code: 'asdjkl')
    Invite.create!(code: '123456')
    Invite.create!(code: 'zxcvbn')

  end
end
