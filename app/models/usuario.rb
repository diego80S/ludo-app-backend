class Usuario < ApplicationRecord
 
    validates :nombre, presence: true
    validates :email, presence: true, uniqueness: true
    validates :progreso, numericality: { only_integer: true }

    def admin?
        rol == 'admin'
    end
    
    def en_tratamiento?
        rol == 'tratamiento'
    end
end
