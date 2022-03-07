import { Controller } from "stimulus";
import Swal from 'sweetalert2';

export default class extends Controller {
  static values = {
    title: String,
    mainText: String,
    ok: String,
    confirmButton: String,
    icon: String
  }

  confirmSubmit() {
    Swal.fire({
      title: this.titleValue,
      text: this.mainTextValue,
      icon: 'warning',
      allowOutsideClick: false,
      confirmButtonColor: '#000000',
      confirmButtonText: 'Confirmer'
    })
  }
}
