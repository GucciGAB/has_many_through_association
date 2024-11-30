class PhysiciansController < ApplicationController
    def index
        @physicians = Physician.all
      end
    
      
      def show
        @physician = Physician.find(params[:id])
      end
    
      
      def new
        @physician = Physician.new
      end
    
      
      def create
        @physician = Physician.new(physician_params)
        if @physician.save
          redirect_to @physician, notice: 'Patient was successfully created.'
        else
          render :new
        end
      end
    
      
      def edit
        @physician = Physician.find(params[:id])
      end
    
      
      def update
        @physician = Physician.find(params[:id])
        if @physician.update(physician_params)
          redirect_to @physician, notice: 'Patient was successfully updated.'
        else
          render :edit
        end
      end
    
    
      def destroy
        @physician = Physician.find(params[:id])
        @physician.destroy
        redirect_to patients_url, notice: 'Patient was successfully deleted.'
      end
    
      private
    
      def physician_params
        params.require(:physician).permit(:name)
      end
end
