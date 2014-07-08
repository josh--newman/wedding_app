class GuestsController < ApplicationController
  def index
    @guests = Guest.all
  end

  def new
  end

  def edit
  end

  def update
    if @guest.update(params[:is_coming][:dietary])
      redirect_to @guest, notice: 'Category was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def delete
  end
end
