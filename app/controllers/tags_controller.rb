class TagsController < ApplicationController
  include TagsHelper
  before_action :find_tag, only: %i[show edit destroy update]

  def index
    @tags = Tag.all
  end

  def show; end

  def edit; end

  def update
    if @tag.update(tag_params)
      redirect_to tags_path, notice: "Tag: #{@tag.name} was Updated successfully!"
    else
      render 'edit', notice: 'Something went wrong.  Please try again.'
    end
  end

  def destroy
    @tag.delete

    redirect_to tags_path, notice: "Tag: #{@tag.name} was Deleted successfully!"
  end
end
