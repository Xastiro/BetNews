import { Controller } from "stimulus";
import Swal from 'sweetalert2';

export default class extends Controller {
  static values = {
    title: String,
    mainText: String,
    ok: String,
    confirmButton: String,
    icon: String,
  }

  badgeinfo() {
    // const id = this.yesTarget.dataset.id
    Swal.fire('Any fool can use a computer')

    Swal.fire({
      title: this.titleValue,
      text: this.mainTextValue,
      icon: 'question'
    }).then((result) => {
      })


  }

}
