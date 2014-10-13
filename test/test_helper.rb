require 'titulo_eleitoral_validator'
require 'active_model'
require 'minitest/autorun'
require 'minitest/pride'

class TestModel
  include ActiveModel::Validations

  def initialize(attributes = {})
    @attributes = attributes
  end

  def read_attribute_for_validation(key)
    @attributes[key]
  end
end