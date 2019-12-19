$(document).on('turbolinks:load', () => {
  if ( !$('body').hasClass('communities') ) {
    return;
  }

  console.log(window.COMMUNITY_ID);

  App.community = App.cable.subscriptions.create({ channel: "CommunityChannel", community_id: window.COMMUNITY_ID }, {
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
