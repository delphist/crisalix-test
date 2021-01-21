// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import { RalixApp } from "ralix";
import "bootstrap";
import "../stylesheets/application.scss";

import AppCtrl from "controllers/app";
import RegistrationsCtrl from "controllers/registrations";
import DoctorsListCtrl from "controllers/doctorsList";
import CreatePatientAppointmentsCtrl from "controllers/createPatientAppointments";
import * as Templates from "templates";

const App = new RalixApp({
  rails_ujs: Rails,
  routes: {
    "/patients/doctors": DoctorsListCtrl,
    "/patients/appointments.*": CreatePatientAppointmentsCtrl,
    "/users.*": RegistrationsCtrl,
    "/.*": AppCtrl,
  },
  templates: Templates,
});

Rails.start();
Turbolinks.start();
App.start();
