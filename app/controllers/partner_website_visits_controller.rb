class PartnerWebsiteVisitsController < ApplicationController
  load_and_authorize_resource

  def index
    @partner_website_visits = PartnerWebsiteVisit.all
  end

  def show
  end

  def new
    @partner_website_visit = PartnerWebsiteVisit.new
  end

  def edit
  end

  def create
    @partner_website_visit = PartnerWebsiteVisit.new(partner_website_visit_params)
    @partner_website_visits.user = current_user

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

  def destroy
    @partner_website_visit.destroy
    respond_to do |format|
      format.html { redirect_to partner_website_visits_url, notice: 'Partner website visit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def partner_website_visit_params
      params.require(:partner_website_visit).permit(:partner_website_id, :user_id)
    end
end
