document.addEventListener('DOMContentLoaded', function(){
  if ( document.getElementById('tweet-image3')){
    const ImageList = document.getElementById('image-list3');

    // 選択した画像を表示する関数
    const createImageHTML = (blob) => {
      // 画像を表示するためのdiv要素を生成
      const imageElement = document.createElement('div');
      imageElement.setAttribute('class', "image-element")
      let imageElementNum = document.querySelectorAll('.image-element').length

       // 表示する画像を生成
      const blobImage = document.createElement('img');
      blobImage.width = 400;
      blobImage.height = 400;
      blobImage.setAttribute('src', blob);
      
       // ファイル選択ボタンを生成
       // 生成したHTMLの要素をブラウザに表示させる
      imageElement.appendChild(blobImage)
      ImageList.appendChild(imageElement)

      inputHTML.addEventListener('change', (e) => {
        file = e.target.files[0];
        blob = window.URL.createObjectURL(file);

        createImageHTML(blob)
      })
    }

    document.getElementById('tweet-image3').addEventListener('change', function(e){

      const file = e.target.files[0];
      const blob = window.URL.createObjectURL(file);

      createImageHTML(blob);
    }); 
  }
});
