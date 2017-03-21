<header>
  <div class="ui fixed teal inverted borderless menu">
    <a href="/" class="header item">
      <h1 class="ui small inverted header">Zotango</h1>
    </a>
    <!--
    <div class="right menu">
      <a href="#" class="item search">
        <i class="icon search"></i>
      </a>
    </div>
    -->
  </div>

  <!-- 検索フォーム -->
  <!--
  <div id="search-form" class="ui inverted attached segment transition hidden">
    <div class="ui inverted form">
      <h1 class="ui inverted medium header">表示設定</h1>
      <div class="inline field">
        <div class="ui checkbox">
          <label>
            <input name="reviewOnly" type="checkbox">
            今日復習するものだけ表示
          </label>
        </div>
      </div>
      <div class="two fields">
        <div class="field">
          <label>表示するタグ</label>
          <select class="ui fluid dropdown" multiple="" name="showTags">
            <option value="a">StateA</option>
            <option value="b">StateB</option>
            <option value="c">StateC</option>
            <option value="d">StateD</option>
          </select>
        </div>
        <div class="field">
          <label>除外するタグ</label>
          <select class="ui fluid dropdown" multiple="" name="hideTags">
            <option value="a">StateA</option>
            <option value="b">StateB</option>
            <option value="c">StateC</option>
            <option value="d">StateD</option>
          </select>
        </div>
      </div>
      <a href="#" class="ui submit red button">保存する</a>
      <div class="ui small basic inverted button">キャンセル</div>
    </div>
  </div>
  -->


  <style>
    #search-form {
      position: absolute;
      z-index: 150;
      margin-top: 45px;
    }
  </style>


  <script>
    /*
    $(function(){
      $('.item.search').on('click', function(){
        $('#search-form').transition('slide down')
      })

      $('.ui.dropdown').dropdown();

      $('.small.button').on('click', function(){
        $('#search-form').removeClass('visible').addClass('hidden')
      })
    })
    */
  </script>
</header>
