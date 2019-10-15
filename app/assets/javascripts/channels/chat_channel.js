App.cable.subscriptions.create('ChatChannel', {
    received: (data) => {
        console.log(data);
    }
});