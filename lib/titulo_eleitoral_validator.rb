require 'active_model'
require 'titulo_eleitoral'

class TituloEleitoralValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if value.nil?
    record.errors.add(attribute, options[:message] || :invalid) unless TituloEleitoral.valido?(value)
  end
end