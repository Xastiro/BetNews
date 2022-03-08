import { Controller } from "stimulus"
import { csrfToken } from "@rails/ujs"

export default class extends Controller {
  static targets = [ "container", "voteyes", "voteno" ]

  yes(event) {
    event.preventDefault()
    const id = this.voteyesTarget.dataset.id
    const wager = { wager: document.getElementsByTagName("output")[0].textContent }

    fetch(`/bets/${id}/bettings/yes`, {
      method: "POST",
      headers: { "Accept": "text/plain", "X-CSRF-Token": csrfToken(),
                 'Content-Type': 'application/json' },
      body: JSON.stringify(wager)
    })
      .then(response => response.text())
      .then((data) => {
        this.containerTarget.innerHTML = data
      })
  }

  no(event) {
    event.preventDefault()
    const id = this.votenoTarget.dataset.id
    const wager = { wager: document.getElementsByTagName("output")[0].textContent }

    fetch(`/bets/${id}/bettings/no`, {
      method: "POST",
      headers: { "Accept": "text/plain", "X-CSRF-Token": csrfToken(),
      'Content-Type': 'application/json' },
      body: JSON.stringify(wager)
    })
      .then(response => response.text())
      .then((data) => {
        this.containerTarget.innerHTML = data
      })
  }
}
