class Api::V1::ProgresosController < ApplicationController
    def index
        usuario =  Usuario.find(params[:id])
        progresos = usuario.progresos

        if progresos
            progresos.each do |progreso|
                render json: progreso.paso
            end
        else
            render json: "no se encontro ningun progreso asociado a este usuario"
        end
    end
    
end
