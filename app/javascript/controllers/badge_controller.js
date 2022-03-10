import { Controller } from "stimulus";
import Swal from 'sweetalert2';

export default class extends Controller {
  static values = {
    icon: String,
    title: String,
    mainText: String,
    footer: String,
    confirmButton: String,
  }


  badgeinfo() {

    Swal.fire({
      iconHtml: this.iconValue,
      customClass: {
        icon: 'no-border'
      },
      title: this.titleValue,
      text: this.mainTextValue,
      footer: this.footerValue,
      confirmButtonText: '<i class="fas fa-backward"></i> Retour',
      confirmButtonAriaLabel: 'Thumbs up, great!',
      confirmButtonColor: '#000000',
    })

  }

}
