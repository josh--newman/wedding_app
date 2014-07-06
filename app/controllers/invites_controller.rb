class InvitesController < ApplicationController
  def new
  end

  def edit
  end

  def update
  end

  def delete
  end

  def rsvp
    @invite = Invite.find_by(code: params[:code])

    respond_to do |format|
      if @invite
        format.html { redirect_to root, notice: 'Used HTML' }
        format.js   {}
        format.json { render json: @invite }
      else
        format.html { redirect_to root_path, notice: "Sorry, the code you entered is not valid." }
        # format.js   {  }
      end
    end # respond_to

  end # rsvp


end # controller
