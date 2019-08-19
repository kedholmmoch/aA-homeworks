document.addEventListener("DOMContentLoaded", function(){
    const canvasEle = document.getElementById('mycanvas');
    canvasEle.height = 500;
    canvasEle.width = 500;

    const ctx = canvasEle.getContext('2d');
    ctx.fillStyle = 'blue';
    ctx.fillRect(50, 50, 350, 350);

    ctx.beginPath();
    ctx.arc(100, 100, 20, 0, 2*Math.PI, true);
    ctx.strokeStyle = 'red';
    ctx.lineWidth = 5;
    ctx.stroke();

    ctx.fillStyle = 'orange';
    ctx.fill();
});
