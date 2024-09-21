class Usuario < ApplicationRecord
    validates :nombre, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    # validates :progreso, numericality: { only_integer: true }
    has_secure_password # Esto añade la capacidad de gestionar contraseñas seguras con bcrypt

    has_many :progresos
    has_many :comportamientos
    has_many :alertas
end
