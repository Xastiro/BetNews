
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    date: String
  }
  static targets = ['timer']


  connect() {
    // console.log("Hello");
    // console.log(new Date(this.dateValue))
    // Set the date we're counting down to
    // Update the count down every 1 second
    this.calculate()
  }

  calculate(event) {
    setInterval(() => {
      // console.log(this.element)

      const now = new Date().getTime();

      const date = new Date(this.dateValue).getTime();
      // const date = this.dateValue;

      // // Find the distance between now and the count down date
      var distance = date - now;

      // // Time calculations for days, hours, minutes and seconds
      var days = Math.floor(distance / (1000 * 60 * 60 * 24) + 1);
      var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60) + 1);
      var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60) + 1);
      var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    // console.log(this.dateValue);
    // Output the result in an element with id="countdown"
      if (days > 0) {
        this.element.innerHTML = "<i class='fas fa-hourglass-half'></i> " + days + " j";
      } else if (hours > 0) {
        this.element.innerHTML = "<i class='fas fa-hourglass-half'></i> " + hours + " h";
      } else if (minutes > 0) {
        this.element.innerHTML = "<i class='fas fa-hourglass-half'></i> " + minutes + " min";
      } else if (seconds > 0) {
        this.element.innerHTML = "<i class='fas fa-hourglass-half'></i> " + seconds + " s";
      } else {
        // clearInterval(x);
        this.element.innerHTML = "Pari clos";
      }
  }, 1000)
  }

}
