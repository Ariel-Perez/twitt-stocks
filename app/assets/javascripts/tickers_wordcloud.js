$(function(){
  list = [['Apple', 120], ['Google', 60], ['Samsung', 80], ['Microsoft', 30]];
  
  generate_wordcloud(list, 'canvas', function(item, dimension, event) {
    window.location.href = 'tickers/' + item[0];
  });
});
