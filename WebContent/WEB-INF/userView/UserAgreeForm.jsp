<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>UserAgreeForm.jsp</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 <link href="css/UserAgreeForm.css" rel="stylesheet">
 <script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
 
 <script type="text/javascript">
 function checkSelectAll()  {
	  // 전체 체크박스
	  const checkboxes 
	    = document.querySelectorAll('input[name="check"]');
	  // 선택된 체크박스
	  const checked 
	    = document.querySelectorAll('input[name="check"]:checked');
	  // select all 체크박스
	  const selectAll 
	    = document.querySelector('input[name="selectall"]');
	  
	  if(checkboxes.length === checked.length)  {
	    selectAll.checked = true;
	  }else {
	    selectAll.checked = false;
	  }

	}

	function selectAll(selectAll)  {
	  const checkboxes 
	     = document.getElementsByName('check');
	  
	  checkboxes.forEach((checkbox) => {
	    checkbox.checked = selectAll.checked
	  })
	}
 
 
 
 $(document).ready(function(){
	    
     $("#nextBtn").click(function(){    
         if($("#check1").is(":checked") == false){
             alert("필수 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
             return;
         }else if($("#check2").is(":checked") == false){
             alert("필수 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
             return;
         }else{
             $("#terms_form").submit();
         }
     });    
 });



 
 </script>
</head>
<body>

<div class="input-form col-md-12 mx-auto">
  <h2 class="mb-3" style="text-align:center;">약관동의</h2><br>
  <form id="terms_form" class="validation-form" action="userregiform.action">
    <div class="row">
      <div class="col-md-6 mb-3 checkbox" style="margin-left: 2%;">
         <h3><font size="4">서비스 이용약관 동의(필수)</font>
         <input style="zoom:1.5;" type="checkbox" class="normal" name="check" id="check1" onclick='checkSelectAll()'/></h3>
  <textarea readonly="readonly" rows="10" cols="100">
여러분을 환영합니다.
라이트 북 서비스를 이용해 주셔서 감사합니다. 
여러분의 라이트 북 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.

라이트 북 서비스를 이용하시거나 라이트 북 서비스 회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다.
라이트 북은 기본적으로 여러분 모두에게 동일한 내용의 서비스를 제공합니다. 

여러분은 본 약관을 읽고 동의하신 후 회원 가입을 신청하실 수 있으며, 이에 대한 승낙을 통해 회원 가입 절차를 완료하고 여러분께 서비스 이용 계정을 부여합니다.
계정이란 회원이 라이트 북 서비스에 로그인한 이후 이용하는 각종 서비스 이용 이력을 회원 별로 관리하기 위해 설정한 회원 식별 단위를 말합니다.
회원은 자신의 계정을 통해 좀더 다양한 서비스를 보다 편리하게 이용할 수 있습니다. 이와 관련한 상세한 내용은 고객센터에 문의해 주세요.

여러분이 제공한 콘텐츠를 소중히 다룰 것입니다.
게재한 게시물이 라이트 북 서비스를 통해 다른 이용자들에게 전달되어 우리 모두의 삶을 더욱 풍요롭게 해줄 것을 기대합니다.
게시물은 여러분이 타인 또는 자신이 보게 할 목적으로 서비스 상에 게재한 부호, 문자, 그림, 사진, 동영상, 링크 등으로 구성된 각종 콘텐츠 자체 또는 파일을 말합니다.
라이트 북은 여러분의 생각과 감정이 표현된 콘텐츠를 소중히 보호할 것을 약속 드립니다. 여러분이 제작하여 게재한 게시물에 대한 지식재산권 등의 권리는 당연히 여러분에게 있습니다.
라이트 북은 여러분이 부여해 주신 콘텐츠 이용 권한을 저작권법 등 관련 법령에서 정하는 바에 따라 서비스 내 노출, 서비스 홍보를 위한 활용, 서비스 운영, 개선 및 새로운 서비스 개발을 위한 연구,
웹 접근성 등 법률상 의무 준수, 외부 사이트에서의 검색, 수집 및 링크 허용을 위해서만 제한적으로 행사할 것입니다.
만약, 그 밖의 목적을 위해 부득이 여러분의 콘텐츠를 이용하고자 할 경우엔 사전에 여러분께 설명을 드리고 동의를 받도록 하겠습니다.

회원 가입 시 이름, 생년월일, 휴대전화번호 등의 정보를 허위로 기재해서는 안 됩니다. 회원 계정에 등록된 정보는 항상 정확한 최신 정보가 유지될 수 있도록 관리해 주세요.
자신의 계정을 다른 사람에게 판매, 양도, 대여 또는 담보로 제공하거나 다른 사람에게 그 사용을 허락해서는 안 됩니다. 아울러 자신의 계정이 아닌 타인의 계정을 무단으로 사용해서는 안 됩니다.
타인에 대해 직접적이고 명백한 신체적 위협을 가하는 내용의 게시물, 타인의 자해 행위 또는 자살을 부추기거나 권장하는 내용의 게시물, 타인의 신상정보, 사생활 등 비공개 개인정보를 드러내는 
내용의 게시물, 타인을 지속적으로 따돌리거나 괴롭히는 내용의 게시물, 성매매를 제안, 알선, 유인 또는 강요하는 내용의 게시물, 공공 안전에 대해 직접적이고 심각한 위협을 가하는 내용의 게시물은 제한될 수 있습니다.
관련 법령상 금지되거나 형사처벌의 대상이 되는 행위를 수행하거나 이를 교사 또는 방조하는 등의 범죄 관련 직접적인 위험이 확인된 게시물, 관련 법령에서 홍보, 광고, 판매 등을 금지하고 있는 물건 또는 서비스를 홍보,
광고, 판매하는 내용의 게시물, 타인의 지식재산권 등을 침해하거나 모욕, 사생활 침해 또는 명예훼손 등 타인의 권리를 침해하는 내용이 확인된 게시물은 제한될 수 있습니다.
자극적이고 노골적인 성행위를 묘사하는 등 타인에게 성적 수치심을 유발시키거나 왜곡된 성 의식 등을 야기할 수 있는 내용의 게시물, 타인에게 잔혹감 또는 혐오감을 일으킬 수 있는 폭력적이고 자극적인 내용의 게시물,
본인 이외의 자를 사칭하거나 허위사실을 주장하는 등 타인을 기만하는 내용의 게시물, 과도한 욕설, 비속어 등을 계속하여 반복적으로 사용하여 심한 혐오감 또는 불쾌감을 일으키는 내용의 게시물은 제한될 수 있습니다.
또한 여러분이 관련 법령, 본 약관, 계정 및 게시물 운영정책, 각 개별 서비스에서의 약관, 운영정책 등을 준수하지 않을 경우, 여러분의 관련 행위 내용을 확인할 수 있으며,
그 확인 결과에 따라 서비스 이용에 대한 주의를 당부하거나, 서비스 이용을 일부 또는 전부, 일시 정지시키는 등 그 이용을 제한할 수 있습니다.

서비스 중단 또는 변경 시 꼭 알려드리겠습니다.
한편, 서비스 운영 또는 개선을 위해 상당한 필요성이 있는 경우 서비스의 전부 또는 일부를 수정, 변경 또는 종료할 수 있습니다
주요 사항을 잘 안내하고 여러분의 소중한 의견에 귀 기울이겠습니다.
서비스 이용에 필요한 주요사항을 적시에 잘 안내해 드릴 수 있도록 힘쓰겠습니다. 
여러분의 소중한 의견에 귀 기울이겠습니다. 여러분은 언제든지 고객센터를 통해 서비스 이용과 관련된 의견이나 개선사항을 전달할 수 있으며,
라이트 북은 합리적 범위 내에서 가능한 그 처리과정 및 결과를 여러분께 전달할 수 있도록 하겠습니다.

본 약관은 한국어를 정본으로 합니다. 본 약관 또는 서비스와 관련된 여러분과 라이트 북과의 관계에는 대한민국의 법령이 적용됩니다.
   </textarea>       
      </div>
    </div>
    <div class="col-md-6 mb-3 checkbox">
     <h3><font size="4">개인정보 수집 및 이용에 대한 안내(필수)</font>
     <input style="zoom:1.5;" type="checkbox" class="normal" name="check" id="check2" onclick='checkSelectAll()'/></h3>
   <div>
     <textarea readonly="readonly" rows="10" cols="100">
개인정보보호법에 따라 라이트 북에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간, 동의 거부권 및 동의 거부 시 불이익에
관한 사항을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.

①수집하는 개인정보
이용자는 회원가입을 하지 않아도 전체책보기, 공지사항, 검색 필드, 인기여행책 열람 서비스를 회원과 동일하게 이용할 수 있습니다.
이용자는 회원 서비스를 이용하기 위해 회원가입을 할 경우, 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.

회원가입 시점에 라이트 북이 이용자로부터 수집하는 개인정보는 아래와 같습니다.
- 회원 가입 시 필수항목으로 아이디, 비밀번호, 닉네임, 전화번호, 이메일, 생년월일을, 선택항목으로 성별, 관심 지역, 관심 카테고리를 수집하며, 본인확인으로 이메일주소를 수집합니다.
서비스 이용 과정에서 이용자로부터 수집하는 개인정보는 아래와 같습니다.
- 회원정보 또는 개별 서비스에서 프로필 정보(닉네임, 프로필 사진, 한 줄 자기소개, 관심 지역, 관심 카테고리)를 설정할 수 있습니다.
- 라이트 북내의 서비스 이용, 사이트내 원활한 정보제공을 위해 추가 개인정보 수집이 발생할 수 있습니다. 추가로 개인정보를 수집할 경우에는 
해당 개인정보 수집 시점에서 이용자에게‘수집하는 개인정보 항목, 개인정보의 수집 및 이용목적, 개인정보의 보관기간’에 대해 안내 드리고 동의를 받습니다.
서비스 이용 과정에서 IP 주소, 쿠키, 서비스 이용 기록, 기기정보, 위치정보가 생성되어 수집될 수 있습니다.
구체적으로 1) 서비스 이용 과정에서 이용자에 관한 정보를 자동화된 방법으로 생성하여 이를 저장(수집)하거나,
2) 이용자 기기의 고유한 정보를 원래의 값을 확인하지 못 하도록 안전하게 변환하여 수집합니다. 서비스 이용 과정에서 위치정보가 수집될 수 있으며,
라이트 북에서 제공하는 위치기반 서비스에 대해서는 '위치기반서비스 이용약관'에서 자세하게 규정하고 있습니다.
이와 같이 수집된 정보는 개인정보와의 연계 여부 등에 따라 개인정보에 해당할 수 있고, 개인정보에 해당하지 않을 수도 있습니다.

②수집한 개인정보의 이용
라이트 북 사이트 관련 제반 서비스의 회원관리, 서비스 개발・제공 및 향상, 안전한 인터넷 이용환경 구축 등 아래의 목적으로만 개인정보를 이용합니다.
- 회원 가입 의사의 확인, 연령 확인 및 법정대리인 동의 진행, 이용자 및 법정대리인의 본인 확인, 이용자 식별, 회원탈퇴 의사의 확인 등 회원관리를 위하여 개인정보를 이용합니다.
- 콘텐츠 등 기존 서비스 제공에 더하여, 인구통계학적 분석, 서비스 방문 및 이용기록의 분석, 개인정보 및 관심에 기반한 이용자간 관계의 형성, 관심사 등에 기반한 
맞춤형 서비스 제공 등 신규 서비스 요소의 발굴 및 기존 서비스 개선 등을 위하여 개인정보를 이용합니다.
- 법령 및 이용약관을 위반하는 회원에 대한 이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는 행위에 대한 방지 및 제재, 계정도용 및 부정거래 방지,
 약관 개정 등의 고지사항 전달, 분쟁조정을 위한 기록 보존, 민원처리 등 이용자 보호 및 서비스 운영을 위하여 개인정보를 이용합니다.
- 서비스 이용기록과 접속 빈도 분석, 서비스 이용에 대한 통계, 서비스 분석 및 통계에 따른 맞춤 서비스 제공 및 광고 게재 등에 개인정보를 이용합니다.
- 보안, 프라이버시, 안전 측면에서 이용자가 안심하고 이용할 수 있는 서비스 이용환경 구축을 위해 개인정보를 이용합니다.

③개인정보의 보관기간
회사는 원칙적으로 이용자의 개인정보를 회원 탈퇴 시 지체없이 파기하고 있습니다.
단, 이용자에게 개인정보 보관기간에 대해 별도의 동의를 얻은 경우, 또는 법령에서 일정 기간 정보보관 의무를 부과하는 경우에는 해당 기간 동안 개인정보를 안전하게 보관합니다.

④개인정보 수집 및 이용 동의를 거부할 권리
이용자는 개인정보의 수집 및 이용 동의를 거부할 권리가 있습니다. 회원가입 시 수집하는 최소한의 개인정보, 즉, 필수 항목에 대한 수집 및 이용 동의를 거부하실 경우, 회원가입이 어려울 수 있습니다.
   </textarea>
   </div>
   </div>
<div class="col-md-6 mb-3 checkbox">
 <h3><font size="4">위치정보 이용약관 동의(선택)</font>
 <input style="zoom:1.5;" type="checkbox" class="normal" name="check" id="check3" onclick='checkSelectAll()'></h3>
  <div><textarea readonly="readonly" rows="10" cols="100">
위치기반서비스 이용약관에 동의하시면, 위치를 활용한 정보 기록등을 포함하는 라이트 북 위치기반 서비스를 이용할 수 있습니다.

제 1 조 (목적)
이 약관은 라이트 북이 제공하는 위치기반서비스와 관련하여 회사와 개인위치정보주체와의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.

제 2 조 (약관 외 준칙)
이 약관에 명시되지 않은 사항은 위치정보의 보호 및 이용 등에 관한 법률, 개인정보보호법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 전기통신기본법, 전기통신사업법 등
 관계법령과 회사의 이용약관 및 개인정보처리방침, 회사가 별도로 정한 지침 등에 의합니다.

제 3 조 (서비스 내용 및 요금)
① 회사는 위치정보사업자로부터 위치정보를 전달받아 아래와 같은 위치기반서비스를 제공합니다.

1)GeoTagging 서비스: 게시물 또는 이용자가 저장하는 콘텐츠에 포함된 개인위치정보주체 또는 이동성 있는 기기의 위치정보가 게시물과 함께 저장됩니다. 저장된 위치정보는 별도의 활용없이 보관되거나, 
또는 장소를 기반으로 콘텐츠를 분류하거나 검색할 수 있는 기능이 제공될 수도 있습니다.
2)위치정보를 활용한 검색결과 및 콘텐츠 제공 : 정보 검색을 요청하거나 개인위치정보주체 또는 이동성 있는 기기의 위치정보를 제공 시 본 위치정보를 이용한 검색결과, 주변결과(맛집, 주변업체, 교통수단 등),
번역결과를 제시합니다.
3)이용자 보호 및 부정 이용 방지: 개인위치정보주체 또는 이동성 있는 기기의 위치를 이용하여 권한없는 자의 비정상적인 서비스 이용 시도 등을 차단합니다.
4)길 안내 등 생활편의 서비스 제공: 교통정보와 길 안내 등 최적의 경로를 지도로 제공하며, 주변 시설물 찾기, 뉴스/날씨 등 생활정보, 긴급구조 서비스, 주소 입력 등 편의 서비스를 제공합니다.위치기반서비스의 이용요금은 무료입니다.
제 4 조 (개인위치정보주체의 권리)
① 개인위치정보주체는 개인위치정보 수집 범위 및 이용약관의 내용 중 일부 또는 개인위치정보의 이용ㆍ제공 목적, 제공받는 자의 범위 및 위치기반서비스의 일부에 대하여 동의를 유보할 수 있습니다.
② 개인위치정보주체는 개인위치정보의 수집ㆍ이용ㆍ제공에 대한 동의의 전부 또는 일부를 철회할 수 있습니다.
③ 개인위치정보주체는 언제든지 개인위치정보의 수집ㆍ이용ㆍ제공의 일시적인 중지를 요구할 수 있습니다. 이 경우 회사는 요구를 거절하지 아니하며, 이를 위한 기술적 수단을 갖추고 있습니다
④ 개인위치정보주체는 회사에 대하여 아래 자료의 열람 또는 고지를 요구할 수 있고, 당해 자료에 오류가 있는 경우에는 그 정정을 요구할 수 있습니다. 이 경우 회사는 정당한 이유 없이 요구를 거절하지 아니합니다.
 </textarea>
   </div>
 </div>
 
  <div class="col-md-11 mb-3" align="center">
 <h3><font size="4">서비스 이용약관 동의(필수), 개인정보 수집 및 이용에 대한 안내(필수)
 , 위치정보 이용약관 동의(선택)에 모두 동의합니다.</font>
	<input style="zoom:1.5;" type="checkbox" name="selectall" id="checkall" value='selectall' onclick='selectAll(this)'></h3>
  <br>
</div>
</form>

<div class="col text-center">
	<button class="btn btn-primary btn-lg" type="submit" id="nextBtn">확인</button>
	<button class="btn btn-secondary btn-lg" type="submit" id="cancel" onclick="location.href='UserLoginForm.jsp'">취소</button>
</div>
</div>
</body>
</html>