require 'open-uri'
require 'json'

class VenuesController < ApplicationController
  def index
    @venues = Venue.all
  end

  def show
    @venue = Venue.find(params[:id])
  end

  def new_form
  end

  def create_row
    @venue = Venue.new
    @venue.name = params[:name]
    @venue.address = params[:address]
    @venue.neighborhood = params[:neighborhood]
    @venue.save

    render('show')
  end

  def edit_form
    @venue = Venue.find(params[:id])
  end

  def update_row
    @venue = Venue.find(params[ :id])

    @venue.name = params[:name]
    @venue.address = params[:address]
    @venue.neighborhood = params[:neighborhood]

    @venue.save

    render('show')
  end

  def destroy
    @venue.destroy
  end
end
