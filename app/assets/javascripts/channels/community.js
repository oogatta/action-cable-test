$(document).on('turbolinks:load', () => {
  if ($('body').data('controllerName') !== 'communities') {
    return;
  }

  // If you need to wait the DOM, AND NEED TURBOLINKS, reset the previous subscription.
  if (App.community) {
    App.cable.subscriptions.remove(App.community)
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
