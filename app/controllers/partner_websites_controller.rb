class PartnerWebsitesController < ApplicationController
  load_and_authorize_resource

  def index
    @partner_websites = PartnerWebsite.all
  end

  def show
  end

  def new
    @partner_website = PartnerWebsite.new
  end

  def edit
  end

  def create
    @partner_website = PartnerWebsite.new(partner_website_params)
    @partner_website.user = current_user

    respond_to do |format|
      if @partner_website.save
        format.html { redirect_to @partner_website, notice: 'Partner website was successfully created.' }
        format.json { render :show, status: :created, location: @partner_website }
      else
        format.html { render :new }
        format.json { render json: @partner_website.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @partner_website.update(partner_website_params)
        format.html { redirect_to @partner_website, notice: 'Partner website was successfully updated.' }
        format.json { render :show, status: :ok, location: @partner_website }
      else
        format.html { render :edit }
        format.json { render json: @partner_website.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @partner_website.destroy
    respond_to do |format|
      format.html { redirect_to partner_websites_url, notice: 'Partner website was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def partner_website_params
      params.require(:partner_website).permit(:url, :token, :user_id)
    end
end
