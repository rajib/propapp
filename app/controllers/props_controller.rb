class PropsController < ApplicationController
  # before_filter :authenticate_user!
  respond_to :html, :json
  
  # GET /props
  def index
    @categories = Category.all
    
    @props = if params[:category]  
      category = Category.find_by_title(params[:category])
      category.props
    else
      Prop.all
    end
    
    respond_with(@props)
  end

  # GET /props/1
  def show
    @prop = Prop.find(params[:id])
  end

  # GET /props/1/edit
  def edit
    @prop = Prop.find(params[:id])
  end

  # PUT /props/1
  def update
    @prop = Prop.find(params[:id])

    if @prop.update_attributes(params[:prop])
      redirect_to @prop, notice: 'Prop was successfully send.'
    else
      render action: "edit"
    end
  end
end
