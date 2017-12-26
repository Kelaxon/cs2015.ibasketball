$(document).ready(function()
			 {
				    var selectoptions = {
			    		"门头沟区": {
			    	         "key" : 10,
			                 "defaultvalue" : '雁翅镇',
			    	         "values" : {
			                     "雁翅镇": '雁翅镇',
			                     "龙泉镇": '龙泉镇',
			                     "清水镇": '清水镇'
			                     }
			              },
			            "怀柔区": {
			                 "key" : 20,
			                 "defaultvalue" : '长哨营镇',
			                 "values" : {
			                     "长哨营镇": '长哨营镇',
			                     "琉璃庙镇": '琉璃庙镇',
			                     "喇叭沟门乡": '喇叭沟门乡',
			                     "九渡河镇": '九渡河镇'
			                     }
			              },
			            "房山区": {
			                 "key" : 30,
			                 "defaultvalue" :'霞云岭乡',
			                 "values" : {
			                     "霞云岭乡": '霞云岭乡',
			                     "蒲洼乡": '蒲洼乡',
			                     "韩村河乡": '韩村河乡'
			                     }
			              },
		             	"昌平区": {
			                 "key" : 40,
			                 "defaultvalue" :'延寿镇',
			                 "values" : {
			                     "延寿镇": '延寿镇',
			                     "十三陵镇": '十三陵镇',
			                     "流村镇": '流村镇'
			                     }
			              },
		              	"延庆区": {
			                 "key" : 50,
			                 "defaultvalue" :'千家店',
			                 "values" : {
			                     "香营": '香营',
			                     "千家店": '千家店',
			                     "八达岭":'八达岭'
			                     }
			              },
		              	"顺义区": {
			                 "key" : 60,
			                 "defaultvalue" :'张镇',
			                 "values" : {
			                     "张镇": '张镇',
			                     "龙湾屯镇": '龙湾屯镇'
			                     }
			              },
			          	"密云区": {
			                 "key" : 70,
			                 "defaultvalue" : '石城乡',
			                 "values" : {
			                     "石城乡": '石城乡',
			                     "穆家峪镇": '穆家峪镇',
			                     "高岭镇": '高岭镇',
			                     "不老屯镇":'不老屯镇'
			                     }
			              },
			          	"平谷区": {
			                 "key" : 80,
			                 "defaultvalue" : '镇罗营镇',
			                 "values" : {
			                     "镇罗营镇": '镇罗营镇',
			                     "南独乐河镇": '南独乐河镇',
			                     "金海湖镇": '金海湖镇',
			                     "大兴庄镇":'大兴庄镇'
			                     }
			              },
			          	"丰台区": {
			                 "key" : 90,
			                 "defaultvalue" : '王佐镇',
			                 "values" : {
			                     "王佐镇": '王佐镇'		                   
			                     }
			              },
			          	"海淀区": {
			                 "key" : 100,
			                 "defaultvalue" : '苏家坨村',
			                 "values" : {
			                     "温泉镇": '温泉镇',
			                     "苏家坨村": '苏家坨村'
			                     }
			              }
	};
	$('#first').doubleSelect('finaloption', selectoptions);      
});
