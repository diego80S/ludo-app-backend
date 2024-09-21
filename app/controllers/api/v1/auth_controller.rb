class Api::V1::AuthController < ApplicationController
    def register
        usuario = Usuario.new(user_params)
        if usuario.save
            render json: { message: "Usuario registrado exitosamente" }, status: :created
        else
        render json: { errors: usuario.errors.full_messages }, status: :unprocessable_entity
        end
    end

    # POST /login
    def login
        usuario = Usuario.find_by(nombre: params[:nombre])
        # Verifica si el usuario existe y si la contraseña es correct
        if usuario && usuario.authenticate(params[:password])
            render json: { message: "Autenticación satisfactoria" }, status: :ok
        else
            render json: { error: "Usuario o contraseña incorrectos" }, status: :unauthorized
        end
    end

    private

    # Método privado para permitir solo los parámetros requeridos
    def user_params
        params.require(:usuario).permit(:nombre, :email, :password)
    end
end
