class Api::V1::RecordatoriosController < ApplicationController
    def index
        usuario =  Usuario.find(params[:id])
        recordatorios = usuario.recordatorios

        if !recordatorios.empty?
            recordatorios.each do |alerta|
                render json: alerta
            end
        else
            render json: "no se encontro ningun alerta asociado a este usuario"
        end
    end
end
