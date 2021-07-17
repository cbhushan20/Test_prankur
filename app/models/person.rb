#
# class EmailValidator < ActiveModel::EachValidator
#   def validate_each(record, attribute, value)
#     unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
#       record.errors.add attribute, (options[:message] || "is not an email")
#     end
#   end
# end

class Person #< ApplicationRecord

  include ActiveModel::Validations
  # extend CustomValidate
  # validates_with CustomValidate
  validates_with MyValidator

  def initialize(name)
    # @cust_id = id
    @name = name
    # name = name
    # @cust_addr = addr
  end

  def name
    return @name
  end

  # self.primary_key = "name"
  # validates :name, presence: true
  # validates :name, uniqueness: { message: ->(object, data) do
  #   "Hey #{object.age}, #{data[:value]} is already taken."
  # end
  # }
  # validates :name, confirmation: true,
  #           if: -> {name.blank?}

  # validates :name, presence: true, confirmation: true
  # validates :name, presence: true, exclusion: { within: %w(www us ca jp), message: "%{value} is reserved." }
  # validates :name, presence: true, length: { maximum: 4, too_long: "%{count} characters is the maximum allowed" }
  # validates :name_confirmation, presence: true
  # validates :terms, acceptance: {accept:['1',true,'yes']}, presence: true
end
