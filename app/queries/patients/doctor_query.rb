module Patients
  class DoctorQuery
    def initialize(query:)
      @query = query
    end

    def execute
      @scope = Doctor.unscoped
      apply_search
      @scope
    end

    protected

    attr_reader :query

    def apply_search
      return if query.blank?

      @scope = @scope.where('city LIKE :query OR name LIKE :query', query: "%#{query}%")
    end
  end
end
