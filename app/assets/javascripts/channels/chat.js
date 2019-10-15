$(document).on('turbolinks:load', () => {
    if ($('body').hasClass('messages')) {
        App.chat = App.cable.subscriptions.create('ChatChannel', {
            received: (data) => {
                console.log(data);
            }
        });
    }
});