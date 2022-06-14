import { Controller } from "stimulus"

export default class extends Controller {
	static targets = ["dropdown"];

	connect() {
	}

  display(event) {
      this.dropdownTarget.classList.toggle("d-none");
      event.currentTarget.classList.toggle("dropup");
  }
}
