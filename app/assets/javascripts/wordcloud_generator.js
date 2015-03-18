function generate_wordcloud(list, click) {
    if(click == null) {
      click = function(item, dimension, event){};
    }
    total = 0;
    for (var i = 0; i < list.length; i++) {
        total += list[i][1];
    }

    options = {
      list : list, 
      weightFactor: function (size) {
        return size / total * 200;
      },
      fontFamily: 'Times, serif',
      color: function (word, weight) {
        return '#228b22';
      },
      rotateRatio: 0.0,
      click: click
    }

    WordCloud(document.getElementById('canvas'), options);
}