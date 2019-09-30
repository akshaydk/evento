class EventRegistrationsController < ApplicationController
  before_action :set_event_registration, only: [:show, :edit, :update, :destroy]

  # GET /event_registrations
  # GET /event_registrations.json
  def index
    current_date = Time.now.strftime("%Y-%m-%d")
    @open_competitions = Competition.where("reg_open <= ? AND reg_close >= ?", current_date, current_date)
    # @event_registrations = EventRegistration.where(user_details_id: current_user.id)
  end

  def show
  end

  # GET /event_registrations/new
  def new
    @competition = Competition.where(id: params[:competition_id]).first
    @user = User.where(id: current_user.id).first
    @age_group = @user.getAgeGroup(@competition.comp_start.strftime("%Y"))

    @event_registration = EventRegistration.new
  end

  # GET /event_registrations/1/edit
  def edit
  end

  # POST /event_registrations
  # POST /event_registrations.json
  def create
    @competition = Competition.where(id: params[:event_registration][:competition_id]).first
    @event_registration = EventRegistration.new(event_registration_params)

    @event_registration.save!
  end

  # PATCH/PUT /event_registrations/1
  # PATCH/PUT /event_registrations/1.json
  def update
    respond_to do |format|
      if @event_registration.update(event_registration_params)
        format.html { redirect_to @event_registration, notice: 'Event registration was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_registration }
      else
        format.html { render :edit }
        format.json { render json: @event_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_registrations/1
  # DELETE /event_registrations/1.json
  def destroy
    @event_registration.destroy
    respond_to do |format|
      format.html { redirect_to event_registrations_url, notice: 'Event registration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_registration
      @event_registration = EventRegistration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_registration_params
      params.require(:event_registration).permit(:competition_id, :user_id, events:[])
    end
end
