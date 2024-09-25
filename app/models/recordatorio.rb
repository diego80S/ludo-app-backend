class Recordatorio < ApplicationRecord
    belongs_to :usuario

    enum tipo: {
        Asistir_reunion: 1,
        lectura_guia:2,
    }
end
