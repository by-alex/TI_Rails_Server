class NfcobjectsController < ApplicationController
  # GET /nfcobjects
  # GET /nfcobjects.json
  def index
    @nfcobjects = Nfcobject.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nfcobjects }
    end
  end

  # GET /nfcobjects/1
  # GET /nfcobjects/1.json
  def show
    @nfcobject = Nfcobject.find(params[:name])
	@attributes = @nfcobject.nfcobjectattributes
	
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nfcobject, :except => [ :id, :created_at, :updated_at ], :include => { :nfcobjectattributes => { :except => [ :id, :created_at, :updated_at ] }}}
    end
  end

  # GET /nfcobjects/new
  # GET /nfcobjects/new.json
  def new
    @nfcobject = Nfcobject.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nfcobject }
    end
  end

  # GET /nfcobjects/1/edit
  def edit
    @nfcobject = Nfcobject.find(params[:id])
  end

  # POST /nfcobjects
  # POST /nfcobjects.json
  def create
    @nfcobject = Nfcobject.new(params[:nfcobject])

    respond_to do |format|
      if @nfcobject.save
        format.html { redirect_to @nfcobject, notice: 'Nfcobject was successfully created.' }
        format.json { render json: @nfcobject, status: :created, location: @nfcobject }
      else
        format.html { render action: "new" }
        format.json { render json: @nfcobject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nfcobjects/1
  # PUT /nfcobjects/1.json
  def update
    @nfcobject = Nfcobject.find(params[:id])

    respond_to do |format|
      if @nfcobject.update_attributes(params[:nfcobject])
        format.html { redirect_to @nfcobject, notice: 'Nfcobject was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @nfcobject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nfcobjects/1
  # DELETE /nfcobjects/1.json
  def destroy
    @nfcobject = Nfcobject.find(params[:id])
    @nfcobject.destroy

    respond_to do |format|
      format.html { redirect_to nfcobjects_url }
      format.json { head :no_content }
    end
  end
end
