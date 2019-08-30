(function () {
  var coreSocialistValues = ["木之本樱","原田梨红","罗兹玛丽","高町奈叶","翠星石","古手梨花","柊镜","逢坂大河","中野梓","巴麻美","园城寺怜","鹿目圆香","宫永咲、原村和","利姆鲁·特恩佩斯特","蒲蒲茶壶·特恩佩斯特"],
    index = Math.floor(Math.random() * coreSocialistValues.length);
  document.body.addEventListener('click', function (e) {
    if (e.target.tagName == 'A') {
      return;
    }
    var x = e.pageX,
      y = e.pageY,
      span = document.createElement('span');
    span.textContent = coreSocialistValues[index];
    index = (index + 1) % coreSocialistValues.length;
    span.style.cssText = ['z-index: 9999999; position: absolute; font-weight: bold; color: #E1244E; top: ', y - 20, 'px; left: ', x, 'px;'].join('');
    document.body.appendChild(span);
    animate(span);
  });

  function animate(el) {
    var i = 0,
      top = parseInt(el.style.top),
      id = setInterval(frame, 16.7);

    function frame() {
      if (i > 180) {
        clearInterval(id);
        el.parentNode.removeChild(el);
      } else {
        i += 2;
        el.style.top = top - i + 'px';
        el.style.opacity = (180 - i) / 180;
      }
    }
  }
}());
