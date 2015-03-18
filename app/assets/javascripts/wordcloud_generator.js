function generate_wordcloud(list, canvas_id, click) {
    if(click == null) {
      click = function(item, dimension, event){};
    }

    max = 0;
    for (var i = 0; i < list.length; i++) {
        if(max < list[i][1]) {
          max = list[i][1];
        }
    }
    console.log(max);

    options = {
      list : list, 
      weightFactor: function (size) {
        return size / max * 50;
      },
      fontFamily: 'Times, serif',
      color: function (word, weight) {
        return '#228b22';
      },
      rotateRatio: 0.0,
      click: click
    }

    WordCloud(document.getElementById(canvas_id), options);
}