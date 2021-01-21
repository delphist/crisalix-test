import AppCtrl from "./app";
import doctorsList from "components/doctorsList";
import debounce from "utils/debounce";

export default class DoctorsListCtrl extends AppCtrl {
  constructor() {
    super();
    this.doctorsList = new doctorsList();
    on(
      "#doctorsListSearchInput",
      "keyup",
      debounce(this.updateList.bind(this), 250)
    );

    this.doctorsList.updateList();
  }

  updateList() {
    this.doctorsList.updateList({
      query: find("#doctorsListSearchInput").value,
    });
  }
}
