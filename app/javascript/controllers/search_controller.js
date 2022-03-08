import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "container", "filter" ]

  search(event) {
    event.preventDefault()

    const url = event.currentTarget.attributes["href"].value

    this.filterTargets.forEach((filter) => {
      filter.classList.remove("active")
    })
    event.currentTarget.classList.add("active")
    window.history.pushState("", "", url);


    fetch(url, {
      method: "GET",
      headers: { "Accept": "text/plain" },
    })
      .then(response => response.text())
      .then((data) => {
        this.containerTarget.innerHTML = data
      })
  }
}
