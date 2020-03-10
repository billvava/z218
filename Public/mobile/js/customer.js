var lock_send = 0;//是否禁用发送
var this_user_id = 0;
var set_time_out;
this_user_id = parseInt(this_user_id);

$(function(){
	//模拟点击上传图片
	$('#tupian').on('click', function(){
		if(lock_send > 0){
			return false;
		}
		$('#send_img').val('');
		$('#send_img').click();
	})
	//显示提示框
	function show_toast(val){
		$('.toast').text(val);
		var toast_w = $('.toast').outerWidth();
		$('.toast').css('margin-left','-' + (toast_w / 2) + 'px');
		$('.toast').show();
		setTimeout(function(){$('.toast').fadeOut(500)},2000);
	}

	//搜索会员
	$('#search').on('click', function(){
		var user = $('#user').val();

		var search = $(this);
		if(user.length > 0){
			$.ajax({
				type: "POST",
				url: get_url,
				data: {'user' : user, 'act': 'find_user'},
				dataType: "json",
				success: function (data) {
					if(data.status){
						change_talk(data.user_info.id,data.user_info.phone);
						$('#user').val('');
					}else{
						show_toast('找不到该会员');
					}
				}
			})
		}
	})

	//点击会员
	$(document).on('click', '.list_box ul li', function(){
		$('.list_box ul li').removeClass('on');
		$(this).addClass('on');
		change_talk($(this).attr('data'), $(this).attr('title'));
		var w = $(window).width();
		if(w < 600){
			$('.left_box').hide();
			$('.right_box').show();
		}
	})


	//打开会员列表
	$('.back').on('click', function(){
		$('.left_box').show();
		$('.right_box').hide();
	})

	//切换会员
	$('.tap span').on('click', function(){
		$('.tap span').removeClass('on');
		$(this).addClass('on');
		$('.list_box ul li').remove();//清空列表
		$('.list_box ul').html('<li class="start">正在加载...</li>');
		var is_all = $('.tap span').index($(this));
		get_user(is_all + 1);
	})

	//点击页面关闭表情框
	$(document).on('click', function(){
		$('.bg').hide();
		$('.biaoqing_box').hide();
	})

	//打开表情框
	$('#biaoqing').on('click', function(){
		$('.bg').show();
		$('.biaoqing_box').show();
		return false;
	})

	$('.ke-plugin-emoticons .ke-img').on('click',function(){
		var this_index = $('.ke-img').index($(this));
		$('.textarea').append("<img src='" + _p_p_ + "/Kindeditor/plugins/emoticons/images/" + this_index + ".gif'>");
		$('.bg').hide();
		$('.biaoqing_box').hide();
		return false;
	})

	$('#qsend').on('click', function(){
		if(lock_send > 0){
			return false;
		}
		var content = $('.textarea').html();
		if(content.length > 0){
			lock_send = 1;//启用锁定发送，防止重复发送
			 $('#send').text('发送中...');
			$.ajax({
				type: "POST",
				url: "/user/sendmsg",
				data: {"content": content,"this_user_id":this_user_id, 'send_type':'word'},
				dataType: "json",
				success: function (data) {
					if(data.status){
						get_content();//重新刷新列表
						$('.textarea').html('');
					}else{
						show_toast(data.info);
					}
					lock_send = 0;//解除发送锁定
					 $('#send').text('发送');
				},
				error: function(){
					lock_send = 0;//解除发送锁定
					 $('#send').text('发送');
				}
			})
		}
	})

	$('#hsend').on('click', function(){
		if(lock_send > 0){
			return false;
		}
		var content = $('.textarea').html();
		if(content.length > 0){
			lock_send = 1;//启用锁定发送，防止重复发送
			 $('#send').text('发送中...');
			$.ajax({
				type: "POST",
				url: "/chuhzg19tvgabxm/sendmsg",
				data: {"content": content,"this_user_id":this_user_id, 'send_type':'word'},
				dataType: "json",
				success: function (data) {
					if(data.status){
						get_content();//重新刷新列表
						$('.textarea').html('');
					}else{
						show_toast(data.info);
					}
					lock_send = 0;//解除发送锁定
					 $('#send').text('发送');
				},
				error: function(){
					lock_send = 0;//解除发送锁定
					 $('#send').text('发送');
				}
			})
		}
	})

	//发送图片
	$('#send_img').on('change', function(){
	  lock_send = 1;//启用锁定发送，防止重复发送
	  $('#send').text('发送中...');
	  $.ajaxFileUpload({
			url: send_url + "?this_user_id=" + this_user_id + '&send_type=img',
			secureuri: false,
			fileElementId: $(this).attr('id'),
			dataType: "application/json",
			type: "POST",
			success: function (resp) {
				resp = JSON.parse(resp);
				if(!resp.error) {
					get_content();//重新刷新列表
				} else {
					show_toast(resp.error);
				}
				lock_send = 0;//解除发送锁定
				$('#send').text('发送');
			},
			error: function (data, status, e) {
				lock_send = 0;//解除发送锁定// console.log(e);
				$('#send').text('发送');
			}
		});
	})

});

//更新对话
function change_talk(user_id,user_number){
	$('.top_items_title').text('您正在跟' + user_number + '对话');
	this_user_id  = user_id;
	$('.body_content ul li').remove();//清空列表
	$('.body_content ul').append('<li class="start">正在加载...</li>');
	get_content(',reset_msg');
}

function get_content(add_act){
	clearTimeout(set_time_out);
	ajax_customer({'act' : 'msg' + add_act, 'this_user_id' : this_user_id});
}
function get_user(is_all,add_act){
	add_act = add_act || '';
	//初始化会员列表
	clearTimeout(set_time_out);
	ajax_customer({'act' : 'user' + add_act, 'is_all' : is_all});
}
function ajax_customer(datas){
	$.ajax({
		type: "POST",
		url: "/chuhzg19tvgabxm/customer",
		data: datas,
		dataType: "json",
		success: function (data) {
			$('.list_box ul li.start').remove();//移除加载层
			if(this_user_id > 0){
				$('.body_content ul li.start').remove();
			}
			if(data.user){
				data.user.this_user = this_user_id;
				var inner_content = template('user_list_template',data.user);
				$('.list_box ul').html(inner_content);
			}
			if(act_voice == 1 && data.has_new){
				var dingdong = document.getElementById('dingdong');
			    dingdong.play();
			}
			if(data.msg){
				var inner_content = template('list_template',data.msg);
				$('.body_content ul').append(inner_content);
				$('.body_content').scrollTop($('.body_content ul').height());
			}
		},error: function(){
			$('.list_box ul li.start').remove();//移除加载层
			if(this_user_id > 0){
				$('.body_content ul li.start').remove();
			}
		}
	});
	set_time_out = setTimeout(function(){ajax_customer({'act' : 'user,msg', 'this_user_id' : this_user_id})},2000);
}