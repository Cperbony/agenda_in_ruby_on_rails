class Contact < ApplicationRecord
has_many :phones # possui muitos telefones
has_one :Address # possui um endereçoptimize

has_many :contact_kinds #possui muitos
has_many :kinds, through: :contact_kinds # contact possi muitos kinds, através de relacionamentos
end
