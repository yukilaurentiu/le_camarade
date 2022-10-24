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
    this.messagesTarget.insertAdjacentHTML("beforeend", data)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }

  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  }
}
