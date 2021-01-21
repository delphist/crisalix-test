class SerializableDoctor < JSONAPI::Serializable::Resource
  type 'doctor'

  attributes :id, :name, :city

  attribute :book_url do
    @url_helpers.new_patients_appointment_path(doctor_id: @object)
  end
end
