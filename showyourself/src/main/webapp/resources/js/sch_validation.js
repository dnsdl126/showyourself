var joinValidate ={
	//결과 메세지 출력시 사용하는 Text

	resultCode : {
		// 공통
		empty_val:{
			code: 1,
			desc: '필수 정보입니다.'
		},//날짜
		beforedate_val:{
			code:3,
			desc:'현재날짜보다 이전날짜를 선택 할 수 없습니다.'
		},
		befsd_val:{
			code:4,
			desc:'시작일이 종료일보다 클 수 없습니다.'
		},
		delinedate_val:{
			code:5,
			desc:'종료일은 시작일로부터 31일까지만 가능합니다.'
		},
		success_schdate:{
			code:10,
			desc:true
		},
		time_emptyval:{
			code:1,
			desc:'시작시간과 종료시간을 입력하세요.'
		},
		beforetime_val:{
			code:3,
			desc:'종료시간이 시작시간보다 빠를 순 없습니다.'
		},
		sametime_val:{
			code:4,
			desc:'시작시간과 종료시간이 같을 수 없습니다.'
		},
		nowtimeafter_val:{
			code:5,
			desc:'입력한 스케쥴의 첫 일자는 현재 시간 이후여야합니다. '
		},
		success_schtime:{
			code:10,
			desc:true
		},//사람
		person_emptyval:{
			code:1,
			desc:'참여인원을 입력하세요.'
		},
		invalid_person:{
			code:2,
			desc:'참여 인원의 값이 유효하지 않습니다.'
		},
		zero_minperson:{
			code:3,
			desc:'최소 인원이 0이 될 수 없습니다.'
		},
		error_person:{
			code:4,
			desc:'최대인원이 최소인원보다 작을 수 없습니다.'
		},
		success_schperson:{
			code:10,
			desc:true
		},//요일 
		day_emptyval:{
			code: 0,
			desc: '요일을 선택해주세요.'
		},
		errorday_val:{
			code:1,
			desc:'선택하신 요일에 해당하는 날짜가 없습니다.'
		},
		success_7day:{
			code:10,
			desc:true
		},



	},
//시작일자,종료일자 유효성체크
checkDate1: function(startdate,nowdate,enddate,diffDate) {
	//매개변수로 받은 시작일자와 오늘날짜 유효성 체크
	var istartdate = Number(startdate);
	var inowdate = Number(nowdate);
	var ienddate = Number(enddate);
 	
	


	if(istartdate == ''|| istartdate.length == 0 || ienddate == '' || ienddate.length == 0){ // 1.값이 있는지 없는지 체크
			return this.resultCode.empty_val;
		}else if(istartdate < inowdate){ // 2.현재날짜보다 이전날짜를 선택했는지 체크
			return this.resultCode.beforedate_val;
		}else if(istartdate > ienddate){ // 3. 시작일 > 종료일 체크
			return this.resultCode.befsd_val;
		}else if(diffDate >= 31){ // 4. 시작일~종료일이 31일이상 차이나는지 체크	
			return this.resultCode.delinedate_val;
		}else{
			return this.resultCode.success_schdate;
		}

},

//시간 유효성 체크
checkschtime: function(starttime,endtime){
	
	var istarttime = Number(starttime);
	var iendtime = Number(endtime);

	if(istarttime == '' || istarttime.length == 0 || iendtime == '' || iendtime.length == 0){ //1.값이 있는지 없는지 체크
		return this.resultCode.time_emptyval;
	}else if(istarttime > iendtime){ // 2. 종료시간이 시작시간보다 빠른지 체크
		return this.resultCode.beforetime_val;
	}else if(istarttime == iendtime){ // 3. 시작시간과 종료시간이 같은지 체크
		return this.resultCode.sametime_val;
	}else{		
		return this.resultCode.success_schtime;
	}


},
//인원 유효성체크
checkschperson: function(minperson,maxperson){
	var regPerson = /[^0-9]/g;

	if(minperson == '' || minperson.length == 0 || maxperson == '' || maxperson.length == 0){ //1.값이 있는지 없는지 체크
		return this.resultCode.person_emptyval;
	}else if(minperson.match(regPerson) || maxperson.match(regPerson)){ // 2. 입력값이 숫자가 아닌 경우
		return this.resultCode.invalid_person;
	}else if(minperson == 0){ //3. 최소인원이 0인 경우
		return this.resultCode.zero_minperson;
	}else if(minperson > maxperson){ // 4.최대 인원이 최소인원보다 작은 경우
		return this.resultCode.error_person;
	}else{
		return this.resultCode.success_schperson;
	}

},

checkday:function(startday,endday,check){
	
	var sday = Number(startday);
	var eday = Number(endday);
	var cday = Number(check);

	if(sday.length == 0 || eday.length == 0 || cday.length == 0){
		return this.resultCode.day_emptyval;
	}else{
		return this.resultCode.success_7day;
	}
},

}