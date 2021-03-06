//pageKit.js 页面相关js

//打开子页面
var index = 0;
function childPage(title,url){
	index =  layer.open({
		type: 2,
		area: ['800px', '600px'],
		title: title,
		content: url,
		closeBtn: 0
	});
}

function addPage(title,url,w,h){
	layer.open({
    type: 2,
    area: ['900px', '500px'],
    fix: false, //不固定
	title:title,
    maxmin: true,
    content: url
});
}

function childPageFull(title,url){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}

//关闭子页面
function childPage_close()
{
    parent.location.reload();//刷新父类
    
	var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
	
	parent.layer.close(index);
}

//分页显示
function jumpCommonPage(url,page,con,convalue){
	
	var page=page;
	if(isNaN(page)){
		var page2=document.getElementById(page).value;
		page=parseInt(page2);
	}
	var url=url+'?page='+page+'&con='+con+'&convalue='+convalue;
	url=encodeURI(url);
	url=encodeURI(url);
	window.location=url;
}

//人员 分页显示
function jumpPersonPage(url,page,con,convalue,type,queryState,starttime,endtime){
	
	var page=page;
	if(isNaN(page)){
		var page2=document.getElementById(page).value;
		page=parseInt(page2);
	}
	var url=url+'?page='+page+'&con='+con+'&convalue='+convalue+'&type='+type+'&queryState='+queryState+'&starttime='+starttime+'&endtime='+endtime;
	url=encodeURI(url);
	url=encodeURI(url);
	window.location=url;
}


//案件 分页显示
function jumpInjurycasePage(url,page,con,convalue,itype,queryState,starttime,endtime) {

    var page = page;
    if (isNaN(page)) {
        var page2 = document.getElementById(page).value;
        page = parseInt(page2);
    }
    var url = url + '?page=' + page + '&con=' + con + '&convalue=' + convalue + '&itype=' + itype + '&queryState=' + queryState + '&starttime=' + starttime + '&endtime=' + endtime;
    url = encodeURI(url);
    url = encodeURI(url);
    window.location = url;
}

//案件 分页显示
function jumpCluePage(url,page,con,convalue,ctype,queryState,starttime,endtime){
	var page=page;
	if(isNaN(page)){
		var page2=document.getElementById(page).value;
		page=parseInt(page2);
	}
	var url=url+'?page='+page+'&con='+con+'&convalue='+convalue+'&ctype='+ctype+'&queryState='+queryState+'&starttime='+starttime+'&endtime='+endtime;
	url=encodeURI(url);
	url=encodeURI(url);
	window.location=url;
}


//通知公告 分页显示
function jumpPnoticePage(url,page,con,convalue,starttime,endtime){
	
	var page=page;
	if(isNaN(page)){
		var page2=document.getElementById(page).value;
		page=parseInt(page2);
	}
	var url=url+'?page='+page+'&con='+con+'&convalue='+convalue+'&starttime='+starttime+'&endtime='+endtime;
	url=encodeURI(url);
	url=encodeURI(url);
	window.location=url;
}



//分页显示
function jumpTimePage(url,page,starttime,endtime,projectid){
console.log("jumpTimePage");
	var page=page;
	if(isNaN(page)){
		var page2=document.getElementById(page).value;
		page=parseInt(page2);
	}
	
	var url=url+'?page='+page+'&starttime='+starttime+'&endtime='+endtime+'&projectid='+projectid;
	url=encodeURI(url);
	url=encodeURI(url);
	window.location=url;
}

function jumpPage(url,page,con,convalue,status){
console.log("enter2");
	var page=page;
	if(isNaN(page)){
		var page2=document.getElementById(page).value;
		page=parseInt(page2);
	}
	
	var url=url+'?page='+page+'&con='+con+'&convalue='+convalue+'&status='+status+'&bid='+bid;
	url=encodeURI(url);
	url=encodeURI(url);
	window.location=url;
}

//根据公众账号及活动编号分页显示
function jumpPublicPageBig(url,page,con,convalue,status,publicaccount,bid){
	var page=page;
	if(isNaN(page)){
		var page2=document.getElementById(page).value;
		page=parseInt(page2);
	}
	
	var url=url+'?page='+page+'&con='+con+'&convalue='+convalue+'&status='+status+'&publicaccount='+publicaccount+'&bid='+bid;
	url=encodeURI(url);
	url=encodeURI(url);
	window.location=url;
}

function jumpPublicPage(url,page,con,convalue){
	var page=page;
	if(isNaN(page)){
		var page2=document.getElementById(page).value;
		page=parseInt(page2);
	}
	
	var url=url+'?page='+page+'&con='+con+'&convalue='+convalue;
	url=encodeURI(url);
	url=encodeURI(url);
	window.location=url;
}

//分页显示
function jumpTime2Page(url,page,con,convalue,start,end,status,pid){
	var page=page;
	if(isNaN(page)){
		var page2=document.getElementById(page).value;
		page=parseInt(page2);
	}
	
	var url=url+'?page='+page+'&con='+con+'&convalue='+convalue+'&start='+start+'&end='+end+'&status='+status+'&pid='+pid;
	url=encodeURI(url);
	url=encodeURI(url);
	window.location=url;
}
//事务审批
function jumpTimePage2(url,page,con,convalue,onetime,start,end,status,pid){
	var page=page;
	if(isNaN(page)){
		var page2=document.getElementById(page).value;
		page=parseInt(page2);
	}
	
	var url=url+'?page='+page+'&con='+con+'&convalue='+convalue+'&onetime='+onetime+'&start='+start+'&end='+end+'&status='+status+'&pid='+pid;
	url=encodeURI(url);
	url=encodeURI(url);
	window.location=url;
}

function jumpInjurycaseCbaPage(url,page,con,convalue,state,start,end)
{

	var page=page;
	if(isNaN(page)){
		var page2=document.getElementById(page).value;
		page=parseInt(page2);
	}
	
	var url=url+'?page='+page+'&con='+con+'&convalue='+convalue+'&queryState='+state+'&starttime='+start+'&endtime='+end;
	url=encodeURI(url);
	url=encodeURI(url);
	window.location=url;
	
}



function deleteBatch(url){
				var aa=document.all.chek;
				var loc=url+"!deleteBatch?ids=0";
				if(aa.value>0){
					loc=url+"!delete?id="+aa.value;
				}
				if(aa.length>0){
					for(var i=0;i<aa.length;i++){
						if(aa[i].checked==true){
							var cpid=aa[i].value;
							loc=loc+","+cpid;
						}
					}
				}
				
				window.location=loc;
}

function deleteBatch2(url){
				var aa=document.all.chek;
				var loc=url+"!deleteBatch2?ids=0";
				if(aa.value>0){
					loc=url+"!delete2?id="+aa.value;
				}
				if(aa.length>0){
					for(var i=0;i<aa.length;i++){
						if(aa[i].checked==true){
							var cpid=aa[i].value;
							loc=loc+","+cpid;
						}
					}
				}
				
				window.location=loc;
}

function deleteBatch3(url){
				var aa=document.all.chek;
				var loc=url+"!deleteBatch3?ids=0";
				if(aa.value>0){
					loc=url+"!delete3?id="+aa.value;
				}
				if(aa.length>0){
					for(var i=0;i<aa.length;i++){
						if(aa[i].checked==true){
							var cpid=aa[i].value;
							loc=loc+","+cpid;
						}
					}
				}
				
				window.location=loc;
}
//全选
function selectAll(){
	var aa=document.getElementsByName("chek");
	if(aa.length>0){
		for(var i=0;i<aa.length;i++){
			aa[i].checked=true;
		}
	}

}
//反选
function reverse(){
	var aa=document.getElementsByName("chek");
	if(aa.length>0){
		for(var i=0;i<aa.length;i++){
			if(aa[i].checked==false){
				aa[i].checked=true;
			}else{
				aa[i].checked=false;
			}
		}
	}

}
//禁止使用退格键backspace
function keyDown(){
            // 禁止使用backspace键
            if(window.event.keyCode == 8){
                alert("该文本框为只读");
                event.returnValue=false;
            }
            // 后面还可以禁止其它键，照着上面的方法写就行了
            // 比如：if(event.shiftKey&&event.keyCode == 121) // 屏蔽shift+F10
}
//公文字典多选择删除shoufatype_manage.jsp


function checkNum(obj){
    //定义正则表达式部分
    var num=obj.value;
    if(isNaN(num)){
        alert("密码只能输入数字");
        obj.value="";
        obj.focus();
    }
}



function checkNum2(){
    //定义正则表达式部分
    var num=obj.value;
    if(isNaN(num)){
        alert("密码只能输入数字");
        obj.value="";
        obj.focus();
    }
}

