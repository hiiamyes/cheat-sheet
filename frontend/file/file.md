# FileReader

https://developer.mozilla.org/en-US/docs/Web/API/FileReader

## readAsDataURL()

```js
function previewFile() {
  var preview = document.querySelector("img");
  var file = document.querySelector("input[type=file]").files[0];
  var reader = new FileReader();

  reader.addEventListener(
    "load",
    function() {
      preview.src = reader.result;
    },
    false
  );

  if (file) {
    reader.readAsDataURL(file);
  }
}
```

URL.createObjectURL() vs FileReader.readAsDataURL()

```js
var blob = items[i].getAsFile();
var URLObj = this._getURLObj();
var source = URLObj.createObjectURL(blob);
```
