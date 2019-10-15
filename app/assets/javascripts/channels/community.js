$(document).on('turbolinks:load', () => {
    if ($('body').hasClass('communities')) {
        App.community = App.cable.subscriptions.create({channel: "CommunityChannel", community_id: "1"}, {
            received: (data) => {
                console.log(data);
            }
        });
    }
});
