import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["nav", "arrow"]
  connect() {
    if (this.arrowTarget) {
      this.navTarget.classList.add("zero")
    }
  }

  toggleHide(event) {
    this.navTarget.classList.toggle("zero")
    this.arrowTarget.classList.toggle("up-arrow")
    this.arrowTarget.classList.toggle("down-arrow")
  }
}
