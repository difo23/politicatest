class Contacto < ActiveRecord::Base
  belongs_to :enc_contacto
    validates :cedula, presence: true,
                       length: { is: 11 },
                       format: { with: /\A[0-9]+\z/,
                                 message: "solo permite numeros" },
                       uniqueness: true

    validates :sexo, inclusion: { in: %w(M F),message: "%{value} is not a valid size" },
    length: { is: 1 }

    #validates :legacy_code, format: { with: /\A[a-zA-Z]+\z/,
    #message: "only allows letters" }

    #validates :size, inclusion: { in: %w(small medium large),
    #message: "%{value} is not a valid size" }



  #validates :name, length: { minimum: 2 }
  #validates :bio, length: { maximum: 500 }
  #validates :password, length: { in: 6..20 }
  #validates :registration_number, length: { is: 6 }

    validates :mesa, presence: true,
                    length: { is: 4 }
end
