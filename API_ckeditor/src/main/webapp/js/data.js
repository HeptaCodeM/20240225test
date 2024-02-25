function writeBoard(){
	const data = editor.getData(); /* CKEditor data를 가져오는 함수 */	
	$("#editor").text(data); /* textarea(hidden)에 data를 담아줌 */
	$("form").eq(0).submit(); /* form server에 전송 */
}