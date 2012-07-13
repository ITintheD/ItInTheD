class OrgTypesController < ApplicationController
  # GET /org_types
  # GET /org_types.json
  def index
    @org_types = OrgType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @org_types }
    end
  end

  # GET /org_types/1
  # GET /org_types/1.json
  def show
    @org_type = OrgType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @org_type }
    end
  end

  # GET /org_types/new
  # GET /org_types/new.json
  def new
    @org_type = OrgType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @org_type }
    end
  end

  # GET /org_types/1/edit
  def edit
    @org_type = OrgType.find(params[:id])
  end

  # POST /org_types
  # POST /org_types.json
  def create
    @org_type = OrgType.new(params[:org_type])

    respond_to do |format|
      if @org_type.save
        format.html { redirect_to @org_type, notice: 'Org type was successfully created.' }
        format.json { render json: @org_type, status: :created, location: @org_type }
      else
        format.html { render action: "new" }
        format.json { render json: @org_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /org_types/1
  # PUT /org_types/1.json
  def update
    @org_type = OrgType.find(params[:id])

    respond_to do |format|
      if @org_type.update_attributes(params[:org_type])
        format.html { redirect_to @org_type, notice: 'Org type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @org_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /org_types/1
  # DELETE /org_types/1.json
  def destroy
    @org_type = OrgType.find(params[:id])
    @org_type.destroy

    respond_to do |format|
      format.html { redirect_to org_types_url }
      format.json { head :no_content }
    end
  end
end
