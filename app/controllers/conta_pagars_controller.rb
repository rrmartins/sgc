class ContaPagarsController < ApplicationController
  # GET /conta_pagars
  # GET /conta_pagars.json
  def ex
    @conta_pagars = ContaPagar.all

    respond_to do |format|
      format.html # ex.html.erb
      format.json { render :json => @conta_pagars }
    end
  end

  # GET /conta_pagars/1
  # GET /conta_pagars/1.json
  def show
    @conta_pagar = ContaPagar.f(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @conta_pagar }
    end
  end

  # GET /conta_pagars/new
  # GET /conta_pagars/new.json
  def new
    @conta_pagar = ContaPagar.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @conta_pagar }
    end
  end

  # GET /conta_pagars/1/edit
  def edit
    @conta_pagar = ContaPagar.f(params[:id])
  end

  # POST /conta_pagars
  # POST /conta_pagars.json
  def create
    @conta_pagar = ContaPagar.new(params[:conta_pagar])

    respond_to do |format|
      if @conta_pagar.save
        format.html { redirect_to @conta_pagar, :notice => 'Conta pagar was successfully created.' }
        format.json { render :json => @conta_pagar, :status => :created, location: @conta_pagar }
      else
        format.html { render action: "new" }
        format.json { render :json => @conta_pagar.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /conta_pagars/1
  # PUT /conta_pagars/1.json
  def update
    @conta_pagar = ContaPagar.f(params[:id])

    respond_to do |format|
      if @conta_pagar.update_attributes(params[:conta_pagar])
        format.html { redirect_to @conta_pagar, :notice => 'Conta pagar was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render :json => @conta_pagar.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /conta_pagars/1
  # DELETE /conta_pagars/1.json
  def destroy
    @conta_pagar = ContaPagar.f(params[:id])
    @conta_pagar.destroy

    respond_to do |format|
      format.html { redirect_to conta_pagars_url }
      format.json { head :ok }
    end
  end
end
