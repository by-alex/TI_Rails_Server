class NfcobjectattributesController < ApplicationController
  # GET /nfcobjectattributes
  # GET /nfcobjectattributes.json
  def index
    @nfcobjectattributes = Nfcobjectattribute.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nfcobjectattributes }
    end
  end

  # GET /nfcobjectattributes/1
  # GET /nfcobjectattributes/1.json
  def show
    @nfcobjectattribute = Nfcobjectattribute.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nfcobjectattribute, :except => [ :id, :created_at, :updated_at ] }
    end
  end

  # GET /nfcobjectattributes/new
  # GET /nfcobjectattributes/new.json
  def new
    @nfcobjectattribute = Nfcobjectattribute.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nfcobjectattribute }
    end
  end

  # GET /nfcobjectattributes/1/edit
  def edit
    @nfcobjectattribute = Nfcobjectattribute.find(params[:id])
  end

  # POST /nfcobjectattributes
  # POST /nfcobjectattributes.json
  def create
    @nfcobjectattribute = Nfcobjectattribute.new(params[:nfcobjectattribute])

    respond_to do |format|
      if @nfcobjectattribute.save
        format.html { redirect_to @nfcobjectattribute, notice: 'Nfcobjectattribute was successfully created.' }
        format.json { render json: @nfcobjectattribute, status: :created, location: @nfcobjectattribute }
      else
        format.html { render action: "new" }
        format.json { render json: @nfcobjectattribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nfcobjectattributes/1
  # PUT /nfcobjectattributes/1.json
  def update
    @nfcobjectattribute = Nfcobjectattribute.find(params[:id])

    respond_to do |format|
      if @nfcobjectattribute.update_attributes(params[:nfcobjectattribute])
        format.html { redirect_to @nfcobjectattribute, notice: 'Nfcobjectattribute was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @nfcobjectattribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nfcobjectattributes/1
  # DELETE /nfcobjectattributes/1.json
  def destroy
    @nfcobjectattribute = Nfcobjectattribute.find(params[:id])
    @nfcobjectattribute.destroy

    respond_to do |format|
      format.html { redirect_to nfcobjectattributes_url }
      format.json { head :no_content }
    end
  end
end
