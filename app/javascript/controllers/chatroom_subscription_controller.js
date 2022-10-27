import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="chatroom-subscription"
export default class extends Controller {
  static values = { chatroomId: Number }
  static targets = ["messages"]
  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      // received stores the function which is called when data is broadcasted in the channel.
      // { received: data =>  this.messagesTarget.insertAdjacentHTML("beforeend", data)},
      { received: data => this.#insertMessageAndScrollDown(data)  }
    )
    console.log(`Subscribe to the chatroom with the id ${this.chatroomIdValue}.`)
  }

  // The turbo:submit-end event is triggered after the form submits, so for the sender only.
  resetForm(event) {
    event.target.reset()
  }

  #insertMessageAndScrollDown(data) {
    fetch(window.location.origin + '/compare_users')
    .then((response) => response.json())
    .then((user_id) => {
      let pos = data.search("passcode=");
      let user_message_id = data.charAt(pos+9)
      this.messagesTarget.insertAdjacentHTML("beforeend", data)

      let message = this.messagesTarget.lastElementChild
      // console.log (parseInt(user_id) === parseInt(user_message_id))
      if (parseInt(user_id) === parseInt(user_message_id)) {
        message.classList.add("message-row", "d-flex", "justify-content-end")
        message.firstElementChild.classList.add("sender-style")
      }
      else {
        message.classList.add("message-row", "d-flex", "justify-content-start")
        message.firstElementChild.classList.add("receiver-style")
      }
      this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
      // location.reload();
    });
  }



  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  }
}
