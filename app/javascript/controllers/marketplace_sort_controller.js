import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
	static targets = ["box"];

	connect() {
	}

  toggle() {
      this.boxTarget.classList.toggle("d-none");
  }

}
