            // 전역 변수 세팅
            var usd = 0;
            var alert_array = new Array();
            
            // 천단위 콤마 함수
            function numberWithCommas(x) {
                return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
            }
            // 숫자 외 문자열 제거 함수
            function numberDeleteChar(x) {
                return x.toString().replace(/[^0-9]+/g, '');
            }

            
  
            function bchprice(){
                $.get('http://jiung.net:8010/api/v1/appserver/?format=json', function(data) { 
                    var coinonebch = parseFloat(data[0]['coinonebch']);
                    var bitfinexbab = parseFloat(data[0]['bitfinexbab']);
                    var bitfinexbsv = parseFloat(data[0]['bitfinexbsv']);
                    var bitfinextotal = parseFloat(data[0]['bitfinextotal']);
                    var poloniexabc = parseFloat(data[0]['poloniexabc']);
                    var poloniexsv = parseFloat(data[0]['poloniexsv']);
                    var polototal = parseFloat(data[0]['polototal']);
                    var upbitbch = parseFloat(data[0]['upbitbch']);
                    var upbitbsv = parseFloat(data[0]['upbitbsv']);
                    var upbittotal = parseFloat(data[0]['upbittotal']);
                    var kobittotal = parseFloat(data[0]['kobittotal']);
                    var korbitsvprice = parseFloat(data[0]['korbitsvprice']);
                    var krobitbchprice = parseFloat(data[0]['krobitbchprice']);
                    var binanceabcprice = parseFloat(data[0]['binanceabcprice']);
                    var binancesvprice = parseFloat(data[0]['binancesvprice']);
                    var binancetotal = parseFloat(data[0]['binancetotal']);
                    var bithumbbch = parseFloat(data[0]['bithumbbch']);
                    var bithumbbsv = parseFloat(data[0]['bithumbbsv']);
                    var bithumbtotal = parseFloat(data[0]['bithumbtotal']);
                    
                    var bitfinexbtc = parseFloat(data[0]['bitfinexbtc']);
                    var bitfinexeth = parseFloat(data[0]['bitfinexeth']);
                    var polobtc = parseFloat(data[0]['polobtc']);
                    var poloeth = parseFloat(data[0]['poloeth']);
                    var binancebtc = parseFloat(data[0]['binancebtc']);
                    var binanceeth = parseFloat(data[0]['binanceeth']);
                    var korbitbtc = parseFloat(data[0]['korbitbtc']);
                    var korbiteth = parseFloat(data[0]['korbiteth']);
                    
                    var upbitbtc = parseFloat(data[0]['upbitbtc']);
                    var upbiteth = parseFloat(data[0]['upbiteth']);
                    var coinonebtc = parseFloat(data[0]['coinonebtc']);
                    var coinoneeth = parseFloat(data[0]['coinoneeth']);
                    var bithumbbtc = parseFloat(data[0]['bithumbbtc']);
                    var bithumbeth = parseFloat(data[0]['bithumbeth']);

                    var ethmaxlist = Math.max(bitfinexeth,poloeth,korbiteth,bithumbeth,binanceeth,coinoneeth,upbiteth) ;
                    var btcmaxlist = Math.max(bitfinexbtc,polobtc,korbitbtc,bithumbbtc,binancebtc,coinonebtc,upbitbtc) ;
                    var bchmaxlist = Math.max(bitfinexbab,poloniexabc,krobitbchprice,bithumbbch,binanceabcprice,coinonebch,upbitbch) ;
                    var bsvmaxlist = Math.max(bitfinexbsv,poloniexsv,korbitsvprice,bithumbbsv,binancesvprice,upbitbsv) ;
                    
                    $('#bitfinexbtc').html(numberWithCommas(bitfinexbtc)+'('+(numberWithCommas(((bitfinexbtc-btcmaxlist)/bitfinexbtc*100).toFixed(2)))+'%)'); 
                    $('#bitfinexeth').html(numberWithCommas(bitfinexeth)+'('+(numberWithCommas(((bitfinexeth-ethmaxlist)/bitfinexeth*100).toFixed(2)))+'%)');
                    $('#polobtc').html(numberWithCommas(polobtc)+'('+(numberWithCommas(((polobtc-btcmaxlist)/polobtc*100).toFixed(2)))+'%)');                    
                    $('#poloeth').html(numberWithCommas(poloeth)+'('+(numberWithCommas(((poloeth-ethmaxlist)/poloeth*100).toFixed(2)))+'%)');
                    $('#binancebtc').html(numberWithCommas(binancebtc)+'('+(numberWithCommas(((binancebtc-btcmaxlist)/binancebtc*100).toFixed(2)))+'%)');
                    $('#binanceeth').html(numberWithCommas(binanceeth)+'('+(numberWithCommas(((binanceeth-ethmaxlist)/binanceeth*100).toFixed(2)))+'%)');                  
                    $('#korbitbtc').html(numberWithCommas(korbitbtc)+'('+(numberWithCommas(((korbitbtc-btcmaxlist)/korbitbtc*100).toFixed(2)))+'%)');
                    $('#korbiteth').html(numberWithCommas(korbiteth)+'('+(numberWithCommas(((korbiteth-ethmaxlist)/korbiteth*100).toFixed(2)))+'%)');
                    $('#upbitbtc').html(numberWithCommas(upbitbtc)+'('+(numberWithCommas(((upbitbtc-btcmaxlist)/upbitbtc*100).toFixed(2)))+'%)');
                    $('#upbiteth').html(numberWithCommas(upbiteth)+'('+(numberWithCommas(((upbiteth-ethmaxlist)/upbiteth*100).toFixed(2)))+'%)'); 
                    $('#coinonebtc').html(numberWithCommas(coinonebtc)+'('+(numberWithCommas(((coinonebtc-btcmaxlist)/coinonebtc*100).toFixed(2)))+'%)');
                    $('#coinoneeth').html(numberWithCommas(coinoneeth)+'('+(numberWithCommas(((coinoneeth-ethmaxlist)/coinoneeth*100).toFixed(2)))+'%)'); 
                    $('#bithumbbtc').html(numberWithCommas(bithumbbtc)+'('+(numberWithCommas(((bithumbbtc-btcmaxlist)/bithumbbtc*100).toFixed(2)))+'%)');
                    $('#bithumbeth').html(numberWithCommas(bithumbeth)+'('+(numberWithCommas(((bithumbeth-ethmaxlist)/bithumbeth*100).toFixed(2)))+'%)'); 
                    
                    
                    
                    
                    
                    
                    $('#coinonebch').html(numberWithCommas(coinonebch)+'('+(numberWithCommas(((coinonebch-bchmaxlist)/coinonebch*100).toFixed(2)))+'%)'); 
                    $('#bitfinexbab').html(numberWithCommas(bitfinexbab)+'('+(numberWithCommas(((bitfinexbab-bchmaxlist)/bitfinexbab*100).toFixed(2)))+'%)');
                    $('#bitfinexbsv').html(numberWithCommas(bitfinexbsv)+'('+(numberWithCommas(((bitfinexbsv-bsvmaxlist)/bitfinexbsv*100).toFixed(2)))+'%)');                    
                    $('#bitfinextotal').html(numberWithCommas(bitfinextotal));
                    $('#poloniexabc').html(numberWithCommas(poloniexabc)+'('+(numberWithCommas(((poloniexabc-bchmaxlist)/poloniexabc*100).toFixed(2)))+'%)');
                    $('#poloniexsv').html(numberWithCommas(poloniexsv)+'('+(numberWithCommas(((poloniexsv-bsvmaxlist)/poloniexsv*100).toFixed(2)))+'%)');                  
                    $('#polototal').html(numberWithCommas(polototal));
                    $('#upbitbch').html(numberWithCommas(upbitbch)+'('+(numberWithCommas(((upbitbch-bchmaxlist)/upbitbch*100).toFixed(2)))+'%)');
                    $('#upbitbsv').html(numberWithCommas(upbitbsv)+'('+(numberWithCommas(((upbitbsv-bsvmaxlist)/upbitbsv*100).toFixed(2)))+'%)');
                    $('#upbittotal').html(numberWithCommas(upbittotal)); 
                    $('#kobittotal').html(numberWithCommas(kobittotal));
                    $('#korbitsvprice').html(numberWithCommas(korbitsvprice)+'('+(numberWithCommas(((korbitsvprice-bsvmaxlist)/korbitsvprice*100).toFixed(2)))+'%)');
                    $('#krobitbchprice').html(numberWithCommas(krobitbchprice)+'('+(numberWithCommas(((krobitbchprice-bchmaxlist)/krobitbchprice*100).toFixed(2)))+'%)'); 
                    $('#binanceabcprice').html(numberWithCommas(binanceabcprice)+'('+(numberWithCommas(((binanceabcprice-bchmaxlist)/binanceabcprice*100).toFixed(2)))+'%)');
                    $('#binancesvprice').html(numberWithCommas(binancesvprice)+'('+(numberWithCommas(((binancesvprice-bsvmaxlist)/binancesvprice*100).toFixed(2)))+'%)');     
                    $('#binancetotal').html(numberWithCommas(binancetotal)); 
                    $('#bithumbbch').html(numberWithCommas(bithumbbch)+'('+(numberWithCommas(((bithumbbch-bchmaxlist)/bithumbbch*100).toFixed(2)))+'%)');
                    $('#bithumbbsv').html(numberWithCommas(bithumbbsv)+'('+(numberWithCommas(((bithumbbsv-bsvmaxlist)/bithumbbsv*100).toFixed(2)))+'%)');
                    $('#bithumbtotal').html(numberWithCommas(bithumbtotal));
                });
            }


            


            // 현재 시간 갱신
            function CurrentTime() {
                var d = new Date();
                $("#lastUpdate").html(d.toString());
            }
            
            // 갱신 함수
            function proc() {
                try {
                    bchprice(); // 폴로닉스
                    CurrentTime(); // 갱신 시간
                } catch(e){
                    
                } finally {
                    setTimeout("proc()", 1000); //10초후 재시작
                }
            }