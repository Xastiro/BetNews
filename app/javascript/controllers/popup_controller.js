import { Controller } from "stimulus";
import Swal from 'sweetalert2';

export default class extends Controller {
  static targets = [ "yes", "no" ]
  static values = {
    title: String,
    mainText: String,
    ok: String,
    confirmButton: String,
    iconPath: String,
    wallet: Number,
  }

  get iconImg() {
    return `<img src="${this.iconPathValue}" width=96 height=96>`
  }

  confirmSubmityes() {
    const id = this.yesTarget.dataset.id

    Swal.fire({
      title: this.titleValue,
      text: this.mainTextValue,
      // icon: 'question',
      iconHtml: this.iconImg,
      showCancelButton: true,
      allowOutsideClick: false,
      confirmButtonColor: '#000',
      cancelButtonColor: '#000',
      cancelButtonText: 'Annuler',
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
      if (result.value > this.walletValue) {
        Swal.fire("Tu n'as plus assez de BetKoins our parier", `Solde actuel ${Math.round(this.walletValue)}`, 'info')
      } else {
        /* Read more about isConfirmed, isDenied below */
        if (result.isConfirmed) {
          const event = new CustomEvent(`confirmedyes${id}`)
          window.dispatchEvent(event)
        } else if (result.isDenied) {
          Swal.fire('Changes are not saved', '', 'info')
        }
      }
    })
  }

  confirmSubmitno() {
    const id = this.noTarget.dataset.id

    Swal.fire({
      title: this.titleValue,
      text: this.mainTextValue,
      // icon: 'question',
      iconHtml: this.iconImg,
      showCancelButton: true,
      allowOutsideClick: false,
      confirmButtonColor: '#000',
      cancelButtonColor: ' #000',
      cancelButtonText: 'Annuler',
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
      if (result.value > this.walletValue) {
        Swal.fire("Tu n'as plus assez de BetKoins our parier", `Solde actuel ${Math.round(this.walletValue)}`, 'info')
      } else {
        /* Read more about isConfirmed, isDenied below */
        if (result.isConfirmed) {
          const event = new CustomEvent(`confirmedno${id}`)
          window.dispatchEvent(event)
        } else if (result.isDenied) {
          Swal.fire('Changes are not saved', '', 'info')
        }
      }
    })
  }
}
