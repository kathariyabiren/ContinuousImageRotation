import QtQuick 2.0

Canvas {
    id: canvas
    // canvas size
    width: 600; height: 600
    // handler to override for drawing
    onPaint: {
        // setup a dark background
        var ctx = getContext("2d");
        ctx.strokeStyle = "#333"
        ctx.fillRect(0,0,canvas.width,canvas.height);
        ctx.shadowColor = "blue";
        ctx.shadowOffsetX = 2;
        ctx.shadowOffsetY = 2;
        // next line crashes
        // ctx.shadowBlur = 10;
        ctx.font = 'bold 80px sans-serif';
        ctx.fillStyle = "#33a9ff";
        ctx.fillText("BIREN",canvas.width/2-150,canvas.height/2);
    }
}
