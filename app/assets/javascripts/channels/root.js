$(document).on('turbolinks:load', () => {
  if ($('body').data('controllerName') !== 'root') {
    return;
  }

  App.root = App.cable.subscriptions.create({channel: "RootChannel"}, {
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
