class EncContacto < ActiveRecord::Base
     has_many :contactos, dependent: :destroy
    validates :cedula, presence: true,
                       length: { is: 11 },
                       format: { with: /\A[0-9]+\z/,
                                 message: "solo permite numeros" },
                       uniqueness: true



    validates :mesa, presence: true,
                    length: { is: 4 }

    #accept_nested_attributes_for :contactos, :allow_destroy => true

end
