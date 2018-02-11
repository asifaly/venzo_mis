class BankcontactsController < ApplicationController
  before_action :set_bankcontact, only: [:show, :edit, :update, :destroy]

  # GET /bankcontacts
  # GET /bankcontacts.json
  def index
    @bankcontacts = Bankcontact.all
  end

  # GET /bankcontacts/1
  # GET /bankcontacts/1.json
  def show
  end

  # GET /bankcontacts/new
  def new
    @bankcontact = Bankcontact.new
  end

  # GET /bankcontacts/1/edit
  def edit
  end

  # POST /bankcontacts
  # POST /bankcontacts.json
  def create
    @bankcontact = Bankcontact.new(bankcontact_params)

    respond_to do |format|
      if @bankcontact.save
        format.html { redirect_to @bankcontact, notice: 'Bankcontact was successfully created.' }
        format.json { render :show, status: :created, location: @bankcontact }
      else
        format.html { render :new }
        format.json { render json: @bankcontact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bankcontacts/1
  # PATCH/PUT /bankcontacts/1.json
  def update
    respond_to do |format|
      if @bankcontact.update(bankcontact_params)
        format.html { redirect_to @bankcontact, notice: 'Bankcontact was successfully updated.' }
        format.json { render :show, status: :ok, location: @bankcontact }
      else
        format.html { render :edit }
        format.json { render json: @bankcontact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bankcontacts/1
  # DELETE /bankcontacts/1.json
  def destroy
    @bankcontact.destroy
    respond_to do |format|
      format.html { redirect_to bankcontacts_url, notice: 'Bankcontact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bankcontact
      @bankcontact = Bankcontact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bankcontact_params
      params.require(:bankcontact).permit(:bank_id, :contact_id)
    end
end
