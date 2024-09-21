class Api::V1::UsuariosController < ApplicationController
   
    def index
        usuarios = Usuario.all
        if usuarios.empty?
            render json: "No hay usuarios registrados"
        else
            render json: usuarios
        end
    end
   
end
