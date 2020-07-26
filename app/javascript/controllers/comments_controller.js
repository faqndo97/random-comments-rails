import { Controller } from "stimulus"
import { nanoid } from 'nanoid'

export default class extends Controller {
  static targets = [ "id", "likes" ]
  
  like() {
    fetch(`/comments/${this.idTarget.value}`, {
      method: 'PUT',
      mode: 'cors',
      body: JSON.stringify({ user_id: this.user_id() }),
      headers: { 'Content-Type': 'application/json' }
    }).then((response) => {
      if (response.ok) {
        this.likesTarget.innerText = parseInt(this.likesTarget.innerText) + 1;
      } else {
        if (response.status == 409) {
          console.error("You can't like a comment multiple times");
        } else {
          console.error("Something happen, sorry!");
        }
      }
    })
  }

  user_id() {
    let user_id = localStorage.getItem('userId');

    if (user_id == null) {
      user_id = nanoid();

      localStorage.setItem('userId', user_id);
    }

    return user_id;
  }
}