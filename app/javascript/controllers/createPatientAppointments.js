import AppCtrl from "./app";
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.css";

export default class CreatePatientAppointmentsCtrl extends AppCtrl {
  constructor() {
    flatpickr("#appointment_scheduled_at", {
      enableTime: true,
      time_24hr: true,
    });
    super();
  }
}
