import { Controller } from "stimulus";
import Swal from 'sweetalert2';

export default class extends Controller {
  static targets = [ "yes" ]
  static values = {
    title: String,
    mainText: String,
    ok: String,
    confirmButton: String,
    icon: String
  }

  confirmSubmit() {
    const id = this.yesTarget.dataset.id

    Swal.fire({
      title: this.titleValue,
      text: this.mainTextValue,
      icon: 'warning',
      allowOutsideClick: false,
      confirmButtonColor: '#000000',
      confirmButtonText: 'Confirmer',
      input: "range",
      inputLabel: '',
      inputAttributes: {
        min: 1,
        max: 100,
        step: 1
      },
      inputValue: 10
    }).then((result) => {
      /* Read more about isConfirmed, isDenied below */
      if (result.isConfirmed) {
        console.log(`confirmed${id}`);
        const event = new CustomEvent(`confirmed${id}`)
        window.dispatchEvent(event)
      } else if (result.isDenied) {
        Swal.fire('Changes are not saved', '', 'info')
      }
    })

  }
}
