import { Controller } from "stimulus"
import { csrfToken } from "@rails/ujs"

export default class extends Controller {
  static targets = [ "container" ]

  close(event) {
    event.preventDefault()
    const id = event.currentTarget.dataset.id
    const result = event.currentTarget.dataset.result

    fetch(`/bets/${id}/close?result=${result}`, {
      method: "PATCH",
      headers: { "Accept": "text/plain", "X-CSRF-Token": csrfToken() },
    })
      .then(response => response.text())
      .then((data) => {
        this.containerTarget.innerHTML = data
      })
  }
}
