import { Controller } from "stimulus"
import { csrfToken } from "@rails/ujs"

export default class extends Controller {
  static targets = [ "container", "vote" ]

  yes(event) {
    event.preventDefault()
    const id = this.voteTarget.dataset.id

    fetch(`/bets/${id}/bettings/yes`, {
      method: "POST",
      headers: { "Accept": "text/plain", "X-CSRF-Token": csrfToken() },
    })
      .then(response => response.text())
      .then((data) => {
        this.containerTarget.innerHTML = data
      })
  }

  no(event) {
    event.preventDefault()
    const id = event.currentTarget.dataset.id

    fetch(`/bets/${id}/bettings/no`, {
      method: "POST",
      headers: { "Accept": "text/plain", "X-CSRF-Token": csrfToken() },
    })
      .then(response => response.text())
      .then((data) => {
        this.containerTarget.innerHTML = data
      })
  }
}
