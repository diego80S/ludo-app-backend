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

   
end
