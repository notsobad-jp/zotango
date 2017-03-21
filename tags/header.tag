<header>
  <div class="ui fixed teal inverted borderless menu">
    <a href="/" class="header item">
      <h4>Zotango</h4>
    </a>
    <div class="right menu">
      <a href="#" class="item search">
        <i class="icon setting"></i>
      </a>
    </div>
  </div>

  <!-- 検索フォーム -->
  <div id="search-form" class="ui inverted attached segment transition hidden">
    <div class="ui inverted form">
      <h1 class="ui inverted small header">
        <i class="icon random"></i>
        別のNotebookに切り替える
      </h1>
      <div class="field">
        <label>表示したいNotebookの【公開URL】を入力してください</label>
        <input class="ui fluid" type="text" placeholder="https://www.evernote.com/pub/xxx/yyyy">
      </div>
      <a href="#" class="ui submit pink inverted button">表示する</a>
      <div class="ui small basic inverted button">キャンセル</div>
    </div>
  </div>


  <style>
    #search-form {
      position: absolute;
      z-index: 150;
      margin-top: 45px;
    }
  </style>


  <script>
    $(function(){
      $('.item.search').on('click', function(){
        $('#search-form').transition('slide down')
      })

      $('.ui.dropdown').dropdown();

      $('.small.button').on('click', function(){
        $('#search-form').removeClass('visible').addClass('hidden')
      })
    })
  </script>
</header>
