import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["category"]

  toggle() {
    // console.log(this.categoryTarget.classList);

    // if (this.categoryTarget.classList.contains("active")) {
    //   this.categoryTarget.classList.add("inactive")
    //   this.categoryTarget.classList.remove("active")
    // } else {
    //   this.categoryTarget.classList.remove("inactive")
    //   this.categoryTarget.classList.add("active")
    // }
  }
}
