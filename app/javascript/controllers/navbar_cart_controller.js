import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
	static targets = ["cart"];

	connect() {
	}

  toggle() {
      this.cartTarget.classList.toggle("d-none");
  }

}
