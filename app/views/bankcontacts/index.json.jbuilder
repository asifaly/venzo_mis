# frozen_string_literal: true

json.array! @bankcontacts, partial: 'bankcontacts/bankcontact', as: :bankcontact
