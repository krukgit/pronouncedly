var errorCallback = function(e) {
    console.log('Reeeejected!', e);
};

navigator.getUserMedia  = navigator.getUserMedia ||
    navigator.webkitGetUserMedia ||
    navigator.mozGetUserMedia ||
    navigator.msGetUserMedia;

if (navigator.getUserMedia) {
    navigator.getUserMedia({audio: false, video: true}, showVideo, errorCallback);
}

function showVideo(stream) {
    var video = document.querySelector('video');
    video.src = window.URL.createObjectURL(stream);
}
