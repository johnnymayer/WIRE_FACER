(function () {

    var width = 640;
    var height = 480;
    var streaming = false;
    var video = null;
    var canvas = null;
    var startbutton = null;   

    function startup() {
        video = document.getElementById('video');
        canvas = document.getElementById('canvas');
        photo = document.getElementById('photo');
        startbutton = document.getElementById('startbutton');

        navigator.getMedia = (navigator.getUserMedia ||
            navigator.webkitGetUserMedia ||
            navigator.mozGetUserMedia ||
            navigator.msGetUserMedia);

        navigator.getMedia(
            {
                video: true,
                audio: false
            },
            function (stream) {
                if (navigator.mozGetUserMedia) {
                    video.mozSrcObject = stream;
                } else {
                    var vendorURL = window.URL || window.webkitURL;
                    video.srcObject = stream;
                }
                video.play();
            },
            function (err) {
                console.log("An error occured! " + err);
            }
        );

        video.addEventListener('canplay', function (ev) {
            if (!streaming) {
                height = video.videoHeight / (video.videoWidth / width);

                video.setAttribute('width', width);
                video.setAttribute('height', height);
                canvas.setAttribute('width', width);
                canvas.setAttribute('height', height);
                streaming = true;
            }
        }, false);

        startbutton.addEventListener('click', function (ev) {
            takepicture();
            ev.preventDefault();
        }, false);

        clearphoto();
    }

    function clearphoto() {
        var context = canvas.getContext('2d');
        context.fillStyle = "#000";
        context.fillRect(0, 0, canvas.width, canvas.height);
        var data = canvas.toDataURL('image/png');
    }

    function takepicture() {
        var ctx = document.getElementById('canvas');
        var context = canvas.getContext('2d');
        if (width && height) {
            canvas.width = width;
            canvas.height = height;
            context.drawImage(video, 0, 0, width, height);
            var img = new Image();

            img.src = ctx.toDataURL();

            var img_b64 = canvas.toDataURL('image/png');
            var png = img_b64.split(',')[1];

            var the_file = new Blob([window.atob(png)], { type: 'image/png', encoding: 'utf-8' });

            var fr = new FileReader();
            fr.onload = function (oFREvent) {
                var v = oFREvent.target.result.split(',')[1];
                v = atob(v);
                var good_b64 = btoa(decodeURIComponent(escape(v)));
                document.getElementById("canvas").src = "data:image/png;base64," + good_b64;
                console.log(good_b64);
               
            };
            fr.readAsDataURL(the_file);
        } else {
            clearphoto();
        }
    }

 window.addEventListener('load', startup, false);
    }) ();