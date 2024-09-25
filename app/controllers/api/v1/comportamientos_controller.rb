class Api::V1::ComportamientosController < ApplicationController
    def index
        usuario =  Usuario.find(params[:id])
        comportamientos = usuario.comportamientos

        if !comportamientos.empty?
            comportamientos.each do |comportamiento|
                render json: comportamiento
            end
        else
            render json: "no se encontro ningun comportamiento asociado a este usuario"
        end
    end

    # def index
    #     usuarios =  Usuario.all
    #     # usuario =  Usuario.find(params[:id])
    #     # comportamientos = usuario.comportamientos

    #     render json: usuarios
    # end   
end
