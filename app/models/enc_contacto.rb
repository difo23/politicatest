class EncContacto < ActiveRecord::Base
     has_many :contactos
    validates :cedula, presence: true,
                    length: { minimum: 11 }

    validates :mesa, presence: true,
                    length: { minimum: 2 }
end
