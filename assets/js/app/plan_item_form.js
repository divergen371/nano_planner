document.addEventListener("DOMContentLoaded", function () {
  const form = document.querySelector("form.js-plan-item");

  if (form) {
    const allDay = form.querySelector(
      "input[name='plan_item[all_day]'][type='checkbox']"
    );

    console.log(allDay.checked);
  }
});
