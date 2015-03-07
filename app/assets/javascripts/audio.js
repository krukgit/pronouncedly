var errorCallback = function(e) {
    console.log('Reeeejected!', e);
};

navigator.getUserMedia  = navigator.getUserMedia ||
    navigator.webkitGetUserMedia ||
    navigator.mozGetUserMedia ||
    navigator.msGetUserMedia;

if (navigator.getUserMedia) {
    navigator.getUserMedia({audio: true, video: false}, recordAudio, errorCallback);
}

function recordAudio(stream) {

}
