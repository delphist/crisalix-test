export default class DoctorsList {
  updateList(params) {
    get("/patients/doctors.json", {
      params,
      options: {
        format: "json",
      },
    }).then((response) => {
      this.renderList(response.data);
    });
  }

  renderList(list) {
    if (list.length === 0) {
      return insertHTML("#doctorsListContainer", "Sorry, nothing was found");
    }

    insertHTML("#doctorsListContainer", "");
    list.forEach((element) => {
      insertHTML(
        "#doctorsListContainer",
        render("doctorElement", element.attributes),
        "end"
      );
    });
  }
}
