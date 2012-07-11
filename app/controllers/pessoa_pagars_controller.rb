class PessoaPagarsController < ApplicationController
  # GET /pessoa_pagars
  # GET /pessoa_pagars.json
  def index
    @pessoa_pagars = PessoaPagar.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @pessoa_pagars }
    end
  end

  # GET /pessoa_pagars/1
  # GET /pessoa_pagars/1.json
  def show
    @pessoa_pagar = PessoaPagar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @pessoa_pagar }
    end
  end

  # GET /pessoa_pagars/new
  # GET /pessoa_pagars/new.json
  def new
    @pessoa_pagar = PessoaPagar.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @pessoa_pagar }
    end
  end

  # GET /pessoa_pagars/1/edit
  def edit
    @pessoa_pagar = PessoaPagar.find(params[:id])
  end

  # POST /pessoa_pagars
  # POST /pessoa_pagars.json
  def create
    @pessoa_pagar = PessoaPagar.new(params[:pessoa_pagar])

    respond_to do |format|
      if @pessoa_pagar.save
        format.html { redirect_to @pessoa_pagar, :notice => 'Pessoa pagar was successfully created.' }
        format.json { render :json => @pessoa_pagar, :status => :created, :location => @pessoa_pagar }
      else
        format.html { render :action => "new" }
        format.json { render :json => @pessoa_pagar.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pessoa_pagars/1
  # PUT /pessoa_pagars/1.json
  def update
    @pessoa_pagar = PessoaPagar.find(params[:id])

    respond_to do |format|
      if @pessoa_pagar.update_attributes(params[:pessoa_pagar])
        format.html { redirect_to @pessoa_pagar, :notice => 'Pessoa pagar was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @pessoa_pagar.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pessoa_pagars/1
  # DELETE /pessoa_pagars/1.json
  def destroy
    @pessoa_pagar = PessoaPagar.find(params[:id])
    @pessoa_pagar.destroy

    respond_to do |format|
      format.html { redirect_to pessoa_pagars_url }
      format.json { head :ok }
    end
  end
end
