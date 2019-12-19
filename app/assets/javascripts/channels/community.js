$(document).on('turbolinks:load', () => {
  if ( !$('body').hasClass('communities') ) {
    return;
  }

  App.community = App.cable.subscriptions.create({ channel: "CommunityChannel", community_id: "1" }, {
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
