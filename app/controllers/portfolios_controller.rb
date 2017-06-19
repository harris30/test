class PortfoliosController < ApplicationController
    def index
        @portfolio_items = Portfolio.all
    end
    
    def new
        @portfolio_item = Portfolio.new
    end
     def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_item, notice: 'Your portfolio item is now live.' }
      else
        format.html { render :new }
      end
    def edit
      @portfolio_item = Portfolio.find(params [:id])
    end
    def update
    respond_to do |format|
      if @blog.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
      else
        format.html { render :edit }
    end
    def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

  def update
    @portfolio_item = Portfolio.find(params[:id])
    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path, notice: 'The record successfully updated.' }
      else
        format.html { render :edit }
      end
      def show
  @portfolio_item = Portfolio.find(params[:id])
      end
  def destroy
  end
   def destroy
    # Perform the lookup
    @portfolio_item = Portfolio.find(params[:id])

    # Destroy/delete the record
    @portfolio_item.destroy

    # Redirect
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Record was removed.' }
    end
end
end