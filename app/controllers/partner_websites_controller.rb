class PartnerWebsitesController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_partner_website, only: [:show, :edit, :update, :destroy]

  # GET /partner_websites
  # GET /partner_websites.json
  def index
    @partner_websites = PartnerWebsite.all
  end

  # GET /partner_websites/1
  # GET /partner_websites/1.json
  def show
  end

  # GET /partner_websites/new
  def new
    @partner_website = PartnerWebsite.new
  end

  # GET /partner_websites/1/edit
  def edit
  end

  # POST /partner_websites
  # POST /partner_websites.json
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

  # PATCH/PUT /partner_websites/1
  # PATCH/PUT /partner_websites/1.json
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

  # DELETE /partner_websites/1
  # DELETE /partner_websites/1.json
  def destroy
    @partner_website.destroy
    respond_to do |format|
      format.html { redirect_to partner_websites_url, notice: 'Partner website was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_partner_website
      @partner_website = PartnerWebsite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def partner_website_params
      params.require(:partner_website).permit(:url, :token, :user_id)
    end
end
