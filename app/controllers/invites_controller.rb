class InvitesController < ApplicationController
  before_action :set_invite, only: [:new, :edit, :update]

  def new
  end

  def edit
  end

  def update

    respond_to do |format|
      if @invite.update_attributes(invite_params)
        format.html { redirect_to root_path, notice: "RSVP'd successfully" }
        format.js   {}

        # Send an email to notify admins that an invite has been updated
        # RsvpMailer.rsvp_update_email(@invite).deliver
      else
        format.html { redirect_to root_path, notice: "Something went wrong!" }
        format.js { render "update_error.js.erb" }
      end
    end # respond_to
  end # update

  def delete
  end

  def rsvp
    @invite = Invite.find_by(code: params[:code])

    respond_to do |format|
      if @invite
        format.html { redirect_to root_path, notice: 'Used HTML' }
        format.js   {}
        format.json { render json: @invite }
      else
        format.html { redirect_to root_path, notice: "Sorry, the code you entered is not valid." }
        format.js   { render "rsvp_error.js.erb" }
      end
    end # respond_to

  end # rsvp

  private

    def set_invite
      @invite = Invite.find(params[:id])
    end

    def invite_params
      params.require(:invite).permit(guests_attributes: [ :id, :is_coming, :has_dietary, :dietary ])
    end


end # controller
