class PessoaRecebersController < ApplicationController
  # GET /pessoa_recebers
  # GET /pessoa_recebers.json
  def index
    @pessoa_recebers = PessoaReceber.find(:all, :conditions => " user_id = #{current_user.id} ")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @pessoa_recebers }
    end
  end

  # GET /pessoa_recebers/1
  # GET /pessoa_recebers/1.json
  def show
    @pessoa_receber = PessoaReceber.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @pessoa_receber }
    end
  end

  # GET /pessoa_recebers/new
  # GET /pessoa_recebers/new.json
  def new
    @pessoa_receber = PessoaReceber.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @pessoa_receber }
    end
  end

  # GET /pessoa_recebers/1/edit
  def edit
    @pessoa_receber = PessoaReceber.find(params[:id])
  end

  # POST /pessoa_recebers
  # POST /pessoa_recebers.json
  def create
    @pessoa_receber = PessoaReceber.new(params[:pessoa_receber])
    @pessoa_receber.user_id = current_user.id
    respond_to do |format|
      if @pessoa_receber.save
        format.html { redirect_to @pessoa_receber, :notice => 'Pessoa receber was successfully created.' }
        format.json { render :json => @pessoa_receber, :status => :created, :location => @pessoa_receber }
      else
        format.html { render :action => "new" }
        format.json { render :json => @pessoa_receber.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pessoa_recebers/1
  # PUT /pessoa_recebers/1.json
  def update
    @pessoa_receber = PessoaReceber.find(params[:id])

    respond_to do |format|
      if @pessoa_receber.update_attributes(params[:pessoa_receber])
        format.html { redirect_to @pessoa_receber, :notice => 'Pessoa receber was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @pessoa_receber.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pessoa_recebers/1
  # DELETE /pessoa_recebers/1.json
  def destroy
    @pessoa_receber = PessoaReceber.find(params[:id])
    @pessoa_receber.destroy

    respond_to do |format|
      format.html { redirect_to pessoa_recebers_url }
      format.json { head :no_content }
    end
  end
end
