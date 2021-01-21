import AppCtrl from "./app";

export default class RegistrationsCtrl extends AppCtrl {
  constructor() {
    super();

    on("#user_profile_type_doctor", "change", () =>
      this.toggleFields("doctor")
    );
    on("#user_profile_type_patient", "change", () =>
      this.toggleFields("patient")
    );

    if (find("#user_profile_type_doctor").checked) {
      this.toggleFields("doctor");
    } else {
      this.toggleFields("patient");
    }
  }

  toggleFields(profileType) {
    if (profileType === "doctor") {
      hide(".patient_fields");
      show(".doctor_fields");
    } else if (profileType === "patient") {
      hide(".doctor_fields");
      show(".patient_fields");
    }
  }
}
