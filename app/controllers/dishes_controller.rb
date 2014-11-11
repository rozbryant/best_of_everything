class DishesController < ApplicationController
  def index
    @dishes = Dish.all
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def new_form

  end

  def create_row
    @dish = Dish.new
    @dish.name = params[:the_name]
    @dish.cuisine = params[:the_cuisine]

    @dish.save

    render('show')
  end

  def edit_form
    @dish = Dish.find(params[:id])
  end

  def update_row
    @dish = Dish.find(params[:id])

    @dish.name = params[:name]
    @dish.cuisine = params[:cuisine]

    @dish.save

    render('show')
  end

  def destroy
    @the_id = params[:id]
    d = Dish.find_by({:id => @the_id})
    d.destroy

  end
end
