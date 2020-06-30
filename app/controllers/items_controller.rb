class ItemsController < ApplicationController

  def index
     @items = Item.all
     render :index #the render is optional
  end

  def new
    @item = Item.new
    #why? why do we say item.new - if i lose it when i make post request after we press submit
    #want to use rails helper that will make forms for you and need a item that 
    #blank placeholder that will be used ro make the form
    # it will know its something new and not fill in the text boxes. 
    #makes a new item. -- we will used a form_with in the view that takes this @item instance variable to use as an argument to help make a form very easily
    render :new 
  end

  def show
    @item = Item.find(params[:id])
    render :show
  end

  def create
    # raise params.inspect
    Item.create(item_params)
    redirect_to items_path
  end 

  def update
    # raise params.inspect
    item = Item.find(params[:id])
    item.update(item_params)
    redirect_to item_path(item)
  end 

  def edit
    @item = Item.find(params[:id])
    render :edit
  end

  def destroy
    Item.find(params[:id]).destroy
    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :quantity)
  end 

  

end
