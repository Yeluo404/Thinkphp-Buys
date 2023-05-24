var items = document.getElementsByClassName('car-items');
var index = 0;
var times = 0;

var timer = function () {
    setInterval(() => {
        times ++;
        if(times == 3){
            items[index].style.opacity = '0';
            index ++;
            if(index == items.length){
                index = 0;
            }
            items[index].style.opacity = '1';
            times=0;
        }
    }, 1000);
}
timer();

