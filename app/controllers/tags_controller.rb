class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
    @pins = Pin.tagged_with(@tag.name)
  end
end
