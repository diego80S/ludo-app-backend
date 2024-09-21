class Comportamiento < ApplicationRecord
    belongs_to :usuario

    enum tipo: {
        ansioso: 1,
        calmado:2
    }
end
