$(function(){
  $('[data-selector="more-btn"]').bind('click',function(){
    if(!$(this).hasClass('down')){
      $(this).parent().addClass('down');
      $(this).parent().find('.more-list').slideDown();
      $(this).addClass('down').html('<i></i>收起');
    }else{
      $(this).parent().removeClass('down');
      $(this).parent().find('.more-list').slideUp();
      $('html,body').stop().animate({scrollTop:$(this).parents('.wrap-list').offset().top});
      $(this).removeClass('down').html('<i></i>展开更多问题');
    }
  });
  // 弹窗插件
  var helpDialog = {
    defaultData:{},
    init:function($elm){
        var popTpl = '<div class="pop-main">'+
                    '<h2 class="pop-title">我怎么修改简历内容？</h2>'+
                    '<div class="pop-content"></div>'+
                    '<form id="popForm" action="/help/helpdetail/feedback">'+
                      '<input type="hidden" name="id" value="" />'+
                      '<div class="pop-bottom">'+
                        '<div class="bottom-content">'+
                          '<span style="margin-right:10px;display:inline-block;zoom:1;vertical-align:middle;">是否解决了您的问题？</span>'+
                          '<label><input class="radio" type="radio" name="useful_type" value="problem_solved_count" checked="checked" />是</label>'+
                          '<label><input class="radio" type="radio" name="useful_type" value="" />否</label>'+
                          '<div class="selectui hide" data-size="8" data-maxHeight="200" data-dock="true">'+
                            '<div class="selectui-head">'+
                              '<input type="hidden" name="unuseful_reason" value="answer_not_clear_count" />'+
                              '<div class="selectui-result">问题回答不够清晰</div>'+
                              '<div class="selectui-drop"></div>'+
                            '</div>'+
                            '<ul>'+
                              '<li data-value="answer_not_clear_count"><a href="javascript:;">问题回答不够清晰</a></li>'+
                              '<li data-value="answer_too_much_count"><a href="javascript:;">内容太多，不想看</a></li>'+
                              '<li data-value="answer_do_not_want_count"><a href="javascript:;">不是我想问的</a></li>'+
                              '<li data-value="answer_mistake_count"><a href="javascript:;">内容不正确</a></li>'+
                            '</ul>'+
                          '</div>'+
                          '<input data-selector="submit-btn" type="button" class="btn btn-primary" name="" value="提交" />'+
                        '</div>'+
                      '</div>'+
                    '</form>'+
                  '</div>';
      popTpl = $(popTpl);
      this.popTpl = popTpl;
      popTpl.find('.pop-content').css('max-height',$(window).height()-300);
      popTpl.find('[name="useful_type"]').bind('change',function(){
        var selectui = $(this).parents('.pop-bottom').find('.selectui');
        if($(this).val()=='problem_solved_count'){
          if(!selectui.hasClass('hide')){
            selectui.addClass('hide');
          }
        }else{
          selectui.removeClass('hide');
        }
      });
      LT.File.Js.load("/p/beta2/js/plugins/jquery.radioui.js,/p/beta2/js/plugins/jquery.selectui.js", function(){
        $('.radio',popTpl).RadioUI();
        $('.selectui',popTpl).SelectUI();
      });
      if($elm.hasClass('lock')){return false;}
      $elm.addClass('lock');
      var _this = this,
          dataId = $elm.attr('data-id'),
          title = $elm.html();
      if(_this.defaultData[dataId]){
        _this.popShow(_this.defaultData[dataId]);
        $elm.removeClass('lock');
      }else{
        LT.ajax({
          url:LT.Env.wwwRoot+'help/helpdetail',
          data:'id='+dataId,
          type:'POST',
          dataType:'html',
          success:function(data){
            $elm.removeClass('lock');
            _this.defaultData[dataId] ={
              id:dataId,
              title:title,
              content:data
            };
            _this.popShow(_this.defaultData[dataId]);
          },
          error:function(){
            $elm.removeClass('lock');
          }
        });
      }
    },
    popShow:function(defaultData){
      var _this = this;
      _this.popTpl.find('h2.pop-title').html(defaultData.title);
      _this.popTpl.find('input[name="id"]').val(defaultData.id);
      _this.popTpl.find('.pop-content').html(defaultData.content);
      $('html').css({'overflow':'hidden'});
      $.dialog({
        title:false,
        lock:true,
        content:_this.popTpl,
        close:function(){
          $('html').css('overflow','visible');
        }
      });
    }
  }
  $('body').delegate('[data-selector="help-dialog"] li a','click',function(){
    helpDialog.init($(this));
    tlog=window.tlog||[];
    tlog.push('c:candidate_help_click');
    LT.ajax({
      url:'/help/helpdetail/feedback',
      type:'POST',
      data:'useful_type=answer_click_count&id='+$(this).attr('data-id')
    });
  });
  // 弹窗提交
  $('body').delegate('[data-selector="submit-btn"]','click',function(){
    var form = $(this).closest('form');
    LT.ajax({
      url:form.attr('action'),
      type:'POST',
      data:form.serializeArray(),
      dataType:'json',
      success:function(data){
        $.dialog.focus.close();
      },
      error:function(){
        $.dialog.focus.close();
      }
    })
  });
  // 搜索提交
  var searchForm = $('[data-selector="search-form"]'),
      searchKey = $('[data-selector="search-key"]');
  searchForm.bind('submit',function(){
    var val = $.trim(searchKey.val());
    if(!val.length){return false;}
  });
  LT.File.Js.load("/p/beta2/js/plugins/jquery.placeholderui.js", function(){
    $('[data-selector="search-key"]').PlaceholderUI({
      relative:false
    });
  });
});
