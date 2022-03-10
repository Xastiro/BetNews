import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "flashes" ]
  connect() {
    setTimeout(() => {
      this.flashesTarget.remove()
    }, 3000);
  }
}
