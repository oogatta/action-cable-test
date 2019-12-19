$(document).on('turbolinks:load', () => {
  if ( !$('body').hasClass('communities') ) {
    return;
  }

  App.community = App.cable.subscriptions.create({ channel: "CommunityChannel", community_id: "1" }, {
    received: (data) => {
      console.log(data);
    }
  });
});
