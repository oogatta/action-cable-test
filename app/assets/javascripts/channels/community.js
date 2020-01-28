$(document).on('turbolinks:load', () => {
  if ($('body').data('controllerName') !== 'communities') {
    return;
  }

  App.community = App.cable.subscriptions.create({channel: "CommunityChannel", community_id: window.COMMUNITY_ID}, {
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
