window.onload = function(){
  //var url = "a.jpg,b.jpg,c.jpg".split(',');
  let url=[];
  url[0] = 'harden.gif';
  url[1] = 'james.gif';
  url[2] = 'doncic.gif';
  url[3] = 'Giannis.gif'
  url[4] = 'NBA1.gif'
  url[5] = 'NBA2.gif'
  url[6] = 'NBA3.gif'
  url[7] = 'watanabe.gif'
  let n = Math.floor(Math.random() * url.length);
  let elm = document.getElementById('main');
  elm.style.backgroundImage = 'url(/images/' + url[n] + ')';
  }
