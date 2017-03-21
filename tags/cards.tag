<cards>
  <section>
    <h1 class="ui medium header">{ notebookName }</h1>
    <div class="">
      <small>
        <a href="#" target="_blank">
          https://www.evernote.com/pub/tonishi157/korean
          <i class="icon linkfy"></i>
        </a>
      </small>
    </div>
    <br>

    <div class="ui icon basic buttons">
      <div class="ui icon button" data-tooltip="上下を入れ替えて表示" data-inverted="" data-position="top left">
        <i class="icon clockwise rotated exchange"></i>
      </div>
      <div class="ui icon button" data-tooltip="今日復習するものだけ表示" data-inverted="" data-position="top left">
        <i class="icon calendar"></i>
      </div>
      <div class="ui icon button" data-tooltip="✅タグが付いたものを非表示" data-inverted="" data-position="top left">
        <i class="icon checkmark"></i>
      </div>
      <div class="ui icon button" data-tooltip="⭐タグが付いたものだけ表示" data-inverted="" data-position="top left">
        <i class="icon star"></i>
      </div>
    </div>

    <div class="ui cards">
      <div class="ui card" each={ note in notes }>
        <div class="main content">
          <div class="ui large header">
            <span>{ note.title.split('|', 2)[0] }</span>
          </div>
        </div>
        <div class="description">
          <span class="" data-card-value="{note.title.split('|', 2)[1]}">
            <b class="ui large header">？</b><br>
            <small>タップして確認</small>
          </span>
        </div>
        <div class="extra content">
          <div class="left floated">
            <span each={ tagGuid in note.tagGuids }>
              { getTagName(tagGuid) }
            </span>
          </div>
          <div class="right floated">
            { formatDate(note.created) }
          </div>
        </div>
      </div>
    </div>

    <div class="ui basic segment">
      <div class="ui tiny progress" data-percent="74">
        <div class="bar"></div>
        <div class="label">2/16</div>
      </div>
    </div>
  </section>

  <style>
    section {
      margin-top: 70px;
      margin-bottom: 50px;
    }

    h1 { margin-bottom: 0 !important; }

    .ui.card {
      margin: 30px 10px;
      height: 501px;
    }
    .ui.card>.extra, .ui.cards>.card>.extra {
      position: absolute;
      width: 100%;
      top: initial;
      bottom: 0;
    }
    .main.content, .description {
       display: flex;
       height: 230px;
       justify-content: center;
       flex-direction: column;
       text-align: center;
    }
    .description {
      background: #eee;
      border-top: 1px solid #ddd;
    }

    .icon.chevron.circle {
      position: absolute;
      top: 44%;
      z-index: 100;
    }
    .icon.chevron.circle.left { left: 0; }
    .icon.chevron.circle.right { right: 0; }
    .slick-disabled {
      display: none !important;
     }

     .slick-slide {
       outline: none
     }
  </style>

	<script>
		var that = this

    //TODO: URLパラメータから公開notebookの情報を取得
    that.notebookName = '韓国語単語集'

    $.get('json/notes.json', function(notes){
      $.get('json/tags.json', function(taggings){
        that.taggings = JSON.parse(taggings)
        that.notes = JSON.parse(notes)
        that.update()

        $('.cards').slick({
          arrows: true,
          prevArrow: '<i class="icon big link chevron circle left"></i>',
          nextArrow: '<i class="icon big link chevron circle right"></i>',
          centerMode: true,
          infinite: false,
          centerPadding: '20px',
          mobileFirst: false,
        })
      })
    })

    getTagName(guid) {
      for(i in that.taggings) {
        if(that.taggings[i].guid == guid) {
          tagName = that.taggings[i].name
        }
      }
      return tagName
    }

    formatDate(created) {
      timestamp = created.slice(0,10)
      d = new Date(timestamp * 1000);
      date = d.getFullYear() + '-' + d.getMonth() + '-' + d.getDate()
      return date
    }

    $(function(){
      // $('.description').on('click', function(){
      //   console.log("aaa")
      // })
      $('.slick-current').on('click', 'div.button', function() {
        console.log("aaaa")
      });
    })

	</script>
</cards>
