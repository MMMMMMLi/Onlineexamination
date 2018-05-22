window.jQuery(function($) {
	"use strict";

	$('.alt-1').countDown({
		css_class: 'countdown-alt-1'
	});

});

var userGrade = "N";

$(function() {
	$('li.option label').click(
		function() {
			var examId = $(this).closest('.test_content_nr_main').closest(
				'li').attr('id'); // 得到题目ID
			var cardLi = $('a[href=#' + examId + ']'); // 根据题目ID找到对应答题卡
			// 设置已答题
			if(!cardLi.hasClass('hasBeenAnswer')) {
				cardLi.addClass('hasBeenAnswer');
			}

		});

	$("#submitBtn").click(function() {
		if(confirm("您确定要交卷麽?")) {

			var Jucount = 0; // 判断题对了几个
			var Racount = 0; // 单选题对了几个
			var Chcount = 0; // 多选题对了几个
			var JuwrongMap = new Map();
			var RawrongMap = new Map();
			var ChwrongMap = new Map();
			for(var int = 1; int < 6; int++) {
				var JuanName = "#JuAn" + int;
				var JuexName = "Ju" + int;
				var JuQuesId = "#JuQuesId" + int;
				// 获取值
				var Juan = $(JuanName).val();
				var Juex = $("input[name='" + JuexName + "']:checked").val();
				var JuQuesIdVal = $(JuQuesId).val() + "-" + int;
				if(Juan != "" && Juan != null & Juex != null && Juex != "" && Juan == Juex) {
					Jucount++;
				} else {
					JuwrongMap.set(JuQuesIdVal, Juan);
				}
			}
			for(var int = 1; int < 11; int++) {
				var RaanName = "#RaAn" + int;
				var RaexName = "Ra" + int;
				var RaQuesId = "#RaQuesId" + int;
				// 获取值
				var Raan = $(RaanName).val();
				var Raex = $("input[name='" + RaexName + "']:checked").val();
				var RaQuesIdVal = $(RaQuesId).val() + "-" + int;
				if(Raan != "" && Raan != null & Raex != null && Raex != "" && Raan == Raex) {
					Racount++;
				} else {
					RawrongMap.set(RaQuesIdVal, Raan);
				}
			}
			for(var int = 1; int < 6; int++) {
				var ChanName = "#ChAn" + int;
				var ChexName = "Ch" + int;
				var ChQuesId = "#ChQuesId" + int;
				// 获取值
				var Chan = $(ChanName).val();
				var checkName = document.getElementsByName(ChexName);
				var chexList = [];
				for(k in checkName) {
					if(checkName[k].checked)
						chexList.push(checkName[k].value);
				}
				var ChQuesIdVal = $(ChQuesId).val() + "-" + int;;
				var Chex = chexList.join("-");
				if(Chan != "" && Chan != null & Chex != null && Chex != "" && Chan == Chex) {
					Chcount++;
				} else {
					ChwrongMap.set(ChQuesIdVal, Chan);
				}
			}

			// 计算总成绩 返回
			var achievement = (Jucount + Racount) * 4 + Chcount * 8;

			var examtype = $("#examtype").val();
			console.log(examtype);
			if(examtype == 'self') {
				$.ajax({
					type: "POST",
					url: "/manager-web/exam/examAnList?achievement=" + achievement,
					success: function(data) {
						//console.log(data)
						// $(window).attr('location', '/manager-web/home/login');
						// 自测完毕后,显示成绩 以及错题和正确答案
						$("#cjDiv").show();
						$("#djDiv").show();
						$("#ageinDiv").show();
						$("#btnDiv").show();
						$("#ctDiv").show();
						$("#time1").hide();
						$("#time2").hide();
						$("#achievement").text(achievement);
						if(achievement >= 0 && achievement < 60) {
							userGrade = "C";
						} else if(achievement >= 60 && achievement < 80) {
							userGrade = "B";
						} else if(achievement >= 80 && achievement <= 100) {
							userGrade = "A";
						} else {
							userGrade = "N";
						}
						$("#userGrade").text(userGrade);
						// removeClass('hasWrong');
						// addClass('hasWrong');
						for(var [key, value] of JuwrongMap) {
							if(key != null && key != "") {
								var temp = key.split('-');
								var dtkId = '#dtk' + temp[0];
								var idLi = $(dtkId); // 根据题目ID找到对应答题卡
								// 设置已答题
								if(!idLi.hasClass('hasWrong')) {
									idLi.removeClass('hasBeenAnswer');
									idLi.addClass('hasWrong');
								}
								// 重新设置答案
								var checkname = 'Ju' + temp[1];
								// $("input[name='"+checkname+"'] [value='"+value+"']").attr("checked",true);  
								$(".test_content_nr_main input[name='" + checkname + "']").each(function() {
									if($(this).val() == value) {
										$(this).prop("checked", true);
									}
								});
							}

						}
						for(var [key, value] of RawrongMap) {
							if(key != null && key != "") {
								var temp = key.split('-');
								var dtkId = '#dtk' + temp[0];
								var idLi = $(dtkId); // 根据题目ID找到对应答题卡
								// 设置已答题
								if(!idLi.hasClass('hasWrong')) {
									idLi.removeClass('hasBeenAnswer');
									idLi.addClass('hasWrong');
								}
								// 重新设置答案
								var checkname = 'Ra' + temp[1];
								// $("input[name='"+checkname+"'] [value='"+value+"']").attr("checked",true);  
								$(".test_content_nr_main input[name='" + checkname + "']").each(function() {
									if($(this).val() == value) {
										$(this).prop("checked", true);
									}
								});
							}

						}
						for(var [key, value] of ChwrongMap) {
							if(key != null && key != "") {
								var temp = key.split('-');
								var dtkId = '#dtk' + temp[0];
								var idLi = $(dtkId); // 根据题目ID找到对应答题卡
								// 设置已答题
								if(!idLi.hasClass('hasWrong')) {
									idLi.removeClass('hasBeenAnswer');
									idLi.addClass('hasWrong');
								}
								// 重新设置答案
								var checkname = 'Ch' + temp[1];
								if(value != null && value != "") {
									var valueList = value.split("-");
									// $("input[name='"+checkname+"'] [value='"+value+"']").attr("checked",true);
									$("input[name='" + checkname + "']").each(function() {
										$(this).prop("checked", false);
									})
									for(var i = 0; i < valueList.length; i++) {
										$("input[name='" + checkname + "']").each(function() {
											if($(this).val() == valueList[i]) {
												$(this).prop("checked", true);
											}
										})
									}
								}

							}
						}
					}
				});
			}

			if(examtype == 'formal') {
				$.ajax({
					type: "POST",
					url: "/manager-web/formal/examAnList?achievement=" + achievement,
					success: function(data) {
						$(window).attr('location', '/manager-web/home/login');
					}
				});
			}

		}
	});

});

function ageinExam() {
	window.location.href = "/manager-web/exam/selfTest?grade="+userGrade;
}