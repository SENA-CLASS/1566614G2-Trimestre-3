function imgLoad(url) {
    return new Promise(function (resolve, reject) {
        var request = new XMLHttpRequest();
        request.open('GET', url);
        request.responseType = 'blob';
        request.onload = function () {
            if (request.status === 200) {
                resolve(request.response);
                console.log("la promesa paso por el estado resolve");
            } else {
                reject(Error('Image didn\'t load successfully; error code:'
                    + request.statusText));
            }
        };
        request.onerror = function () {
            reject(Error('There was a network error.'));
        };
        request.send();
    });
}

imgLoad("https://vignette.wikia.nocookie.net/dragonball/images/c/ca/Son_Goku_dise%C3%B1o_DBS_Broly.png/revision/latest?cb=20180831182644&path-prefix=es");
