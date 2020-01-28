App.chat = App.cable.subscriptions.create('ChatChannel', {
  initialized() {
    console.log("initialized");
  },

  connected() {
    console.log("connected");
  },

  disconnected() {
    console.log("disconnected");
  },

  rejected() {
    console.log("rejected");
  },

  received(data) {
    console.log(data);
  }
});
