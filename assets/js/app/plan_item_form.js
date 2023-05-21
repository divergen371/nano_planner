document.addEventListener("DOMContentLoaded", function () {
  const form = document.querySelector("form.js-plan-item");

  if (form) {
    const allDay = form.querySelector(
      "input[name='plan_item[all_day]'][type='checkbox']"
    );

    form.querySelectorAll(".js-date-and-time").forEach(function (div) {
      div.classList.toggle("d-none", allDay.checked);
    });

    form.querySelectorAll(".js-date-picker").forEach(function (div) {
      div.classList.toggle("d-none", !allDay.checked);
    });

    allDay.addEventListener("change", function () {
      form.querySelectorAll(".js-date-and-time").forEach(function (div) {
        div.classList.toggle("d-none", allDay.checked);
      });
      form.querySelectorAll(".js-date-picker").forEach(function (div) {
        div.classList.toggle("d-none", !allDay.checked);
      });
    });
  }
});
