class ContaRecebersController < ApplicationController
  # GET /conta_recebers
  # GET /conta_recebers.json
  def index
    @conta_recebers = ContaReceber.find(:all, :conditions => " user_id = #{current_user.id} ")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @conta_recebers }
    end
  end

  # GET /conta_recebers/1
  # GET /conta_recebers/1.json
  def show
    @conta_receber = ContaReceber.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @conta_receber }
    end
  end

  # GET /conta_recebers/new
  # GET /conta_recebers/new.json
  def new
    @conta_receber = ContaReceber.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @conta_receber }
    end
  end

  # GET /conta_recebers/1/edit
  def edit
    @conta_receber = ContaReceber.find(params[:id])
  end

  # POST /conta_recebers
  # POST /conta_recebers.json
  def create
    @conta_receber = ContaReceber.new(params[:conta_receber])

    respond_to do |format|
      if @conta_receber.save
        format.html { redirect_to @conta_receber, :notice => 'Conta receber was successfully created.' }
        format.json { render :json => @conta_receber, :status => :created, :location => @conta_receber }
      else
        format.html { render :action => "new" }
        format.json { render :json => @conta_receber.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /conta_recebers/1
  # PUT /conta_recebers/1.json
  def update
    @conta_receber = ContaReceber.find(params[:id])

    respond_to do |format|
      if @conta_receber.update_attributes(params[:conta_receber])
        format.html { redirect_to @conta_receber, :notice => 'Conta receber was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @conta_receber.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /conta_recebers/1
  # DELETE /conta_recebers/1.json
  def destroy
    @conta_receber = ContaReceber.find(params[:id])
    @conta_receber.destroy

    respond_to do |format|
      format.html { redirect_to conta_recebers_url }
      format.json { head :no_content }
    end
  end
end
