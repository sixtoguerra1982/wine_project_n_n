class StrainWinesController < ApplicationController
    def index
        # listar los de registros de StrainWines
        # wine
        #  strains - porcentaje - link_modificar_%
        @wines = Wine.all.order(:name).includes(:strain_wines).references(:strains)
    end

    def edit
        # byebug
        @strain_wine = StrainWine.find(params[:id])
    end

    def update
        @strain_wine = StrainWine.find(params[:id])
        @strain_wine.percentage = params[:strain_wine][:percentage].to_i
        if @strain_wine.save!
            redirect_to strain_wines_path , notice: 'Update Percentage OK'
        else
            render :edit, status: :unprocessable_entity 
        end
    end

    def destroy
        @strain_wine = StrainWine.find(params[:id])

        @strain_wine.destroy
        respond_to do |format|
            format.html { redirect_to strain_wines_path, notice: "Wine Strain was successfully destroyed." }
        end
    end
end