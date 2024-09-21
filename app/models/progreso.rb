class Progreso < ApplicationRecord
    belongs_to :usuario

    enum paso: {
        paso_uno: 1,
        paso_dos:2,
    }
end
