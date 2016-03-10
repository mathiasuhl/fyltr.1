class PartnerWebsiteVisitsController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_partner_website_visit, only: [:show, :edit, :update, :destroy]

  # GET /partner_website_visits
  # GET /partner_website_visits.json
  def index
    @partner_website_visits = PartnerWebsiteVisit.all
  end

  # GET /partner_website_visits/1
  # GET /partner_website_visits/1.json
  def show
  end

  # GET /partner_website_visits/new
  def new
    @partner_website_visit = PartnerWebsiteVisit.new
  end

  # GET /partner_website_visits/1/edit
  def edit
  end

  # POST /partner_website_visits
  # POST /partner_website_visits.json
  def create
    @partner_website_visit = PartnerWebsiteVisit.new(partner_website_visit_params)

    respond_to do |format|
      if @partner_website_visit.save
        format.html { redirect_to @partner_website_visit, notice: 'Partner website visit was successfully created.' }
        format.json { render :show, status: :created, location: @partner_website_visit }
      else
        format.html { render :new }
        format.json { render json: @partner_website_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /partner_website_visits/1
  # PATCH/PUT /partner_website_visits/1.json
  def update
    respond_to do |format|
      if @partner_website_visit.update(partner_website_visit_params)
        format.html { redirect_to @partner_website_visit, notice: 'Partner website visit was successfully updated.' }
        format.json { render :show, status: :ok, location: @partner_website_visit }
      else
        format.html { render :edit }
        format.json { render json: @partner_website_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partner_website_visits/1
  # DELETE /partner_website_visits/1.json
  def destroy
    @partner_website_visit.destroy
    respond_to do |format|
      format.html { redirect_to partner_website_visits_url, notice: 'Partner website visit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_partner_website_visit
      @partner_website_visit = PartnerWebsiteVisit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def partner_website_visit_params
      params.require(:partner_website_visit).permit(:partner_website_id, :user_id)
    end
end
