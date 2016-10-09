class ItemsController < ApplicationController
  def home
    @items = Item.all
  end

  def cart
  end

  def checkout
  end

  def receipt
  end

  def new
    @new_item = Item.new
  end

  def create
    # Instantiate a new object using form parameters
    @new_item = Item.new(item_params)
    # Save the object
    if @new_item.save
      # If save succeeds, redirect to the index action
      flash[:notice] = "Item created successfully."
      redirect_to root_path
    else
      # If save fails, redisplay the form so user can fix problems
      render('new')
    end
end

private




  def item_params
    # same as using "params[:subject]", except that it:
    # - raises an error if :subject is not present
    # - allows listed attributes to be mass-assigned
      params.require(:item).permit(:kind, :name, :image_url, :size, :price,
                                      :description)
  end
end
