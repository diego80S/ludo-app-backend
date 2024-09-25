class Api::V1::UsuariosController < ApplicationController
 
    def index
        usuarios = Usuario.all
        if usuarios.empty?
            render json: "No hay usuarios registrados"
        else
            render json: usuarios
        end
    end

    def show
        usuario = Usuario.find_by(id: params[:id]) 
        if usuario
            render json: usuario
        else
            render json: { message: "Usuario no registrado" }, status: :ok
        end
    end

    def update
        usuario = Usuario.find_by(id: params[:id])
        if usuario.update(usuario_params)
            # render json: usuario, status: :ok
            render json: { message: "Usuario actualizado correctamente" }, status: :ok
        else
            render json: { message: "Usuario no se puede editar" }, status: :ok
        end

    end
    
    def destroy
        usuario = Usuario.find_by(id: params[:id])     
        if usuario
            usuario.destroy           
            render json: { message: "Usuario eliminado correctamente" }, status: :ok
         
        else
            render json: { error: "No se pudo eliminar, usuario no encontrado" }, status: :not_found

        end           
    end

    private

    def usuario_params
        params.require(:usuario).permit(:nombre) # Permite el nombre como parámetro
    end
   
    def index
        usuarios = Usuario.all
        if usuarios.empty?
            render json: "No hay usuarios registrados"
        else
            render json: usuarios
        end
    end
   
end
