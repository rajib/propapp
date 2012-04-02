class Admin::PropsController < Admin::BaseController

  # GET /admin/props
  def index
    @props = Prop.all
  end

  # GET /admin/props/1
  def show
    @prop = Prop.find(params[:id])
  end

  # GET /admin/props/new
  def new
    @prop = Prop.new
  end

  # GET /admin/props/1/edit
  def edit
    @prop = Prop.find(params[:id])
  end

  # POST /admin/props
  def create
    @prop = Prop.new(params[:prop])

    if @prop.save
      redirect_to admin_prop_path(@prop), notice: 'Prop was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /admin/props/1
  def update
    @prop = Prop.find(params[:id])

	if @prop.update_attributes(params[:prop])
	  redirect_to admin_prop_path(@prop), notice: 'Prop was successfully updated.'
	else
	  render action: "edit" 
	end
  end

  # DELETE /admin/props/1
  def destroy
    @prop = Prop.find(params[:id])
    @prop.destroy

	redirect_to admin_props_url
  end
end
