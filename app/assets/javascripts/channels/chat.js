$(document).on('turbolinks:load', () => {
  if ( $('body').data('controllerName') !== 'messages' ) {
    return;
  }

  // If you need to wait the DOM, AND NEED TURBOLINKS, reset the previous subscription.
  if (App.chat) {
    App.cable.subscriptions.remove(App.community)
  }

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
});