class TagsController < ApplicationController

def show
  @tag = Tag.find(params[:id])
end


def index
  @tag = Tag.all
end

def destroy
  @tag = Tag.find(params[:id])
  @tag = destroy
end

end
