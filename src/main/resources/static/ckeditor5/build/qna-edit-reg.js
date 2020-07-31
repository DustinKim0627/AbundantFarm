ClassicEditor
			.create( document.querySelector( '.editor' ), {
				toolbar: {
					items: [
						'heading',
						'bold',
						'italic',
						'link',
						'bulletedList',
						'numberedList',
						'indent',
						'outdent',
						'imageUpload',
						'blockQuote',
						'insertTable',
						'mediaEmbed',
						'undo',
						'redo',
						'ckFinder',
						'fontColor',
						'fontBackgroundColor',
						'fontFamily',
						'highlight',
						'horizontalLine',
						'underline'
					]
				},
				language: 'ko',
				licenseKey: '',
				ckfinder: {
					// Upload the images to the server using the CKFinder QuickUpload command.
					uploadUrl: 'http://localhost:8080/api/img/img',
					resourceType: 'Images',
					privateDir:{
						backend: 'default',
						path: '.ckfinder/'
					},
					backends:{
					  name: 'default',
						adapter: 'local',
						baseUrl: 'http://localhost:8080',
						root: '/path/upload',
						disallowUnsafeCharacters: true,
						forceAscii: false,
						hideFolders: ['.*', 'CVS', '__thumbs'],
						hideFiles: ['.*'],
						htmlExtensions: ['html', 'htm', 'xml', 'js'],
						overwriteOnUpload: false,
						useProxyCommand: false
					}
				},
				image: {
					toolbar: [
						'imageTextAlternative',
						'imageStyle:full',
						'imageStyle:side'
					]
				},
				table: {
					contentToolbar: [
						'tableColumn',
						'tableRow',
						'mergeTableCells'
					]
				}
				
			} )
			.then( editor => {
				window.editor = editor;
				
			    // 완료버튼 변수담기
			    const ansBtn = document.querySelector(".qna-reg");
			    console.log(editor);
			    // 완료버튼 눌렀을 시 콜백함수
			    ansBtn.addEventListener("click", () => {
			    		let eitorTitle = document.querySelector(".editor-title").value;
						let editorContent = editor.getData(); //editor 담긴내용을 갖고옴
						console.log(editorContent);
						console.log(eitorTitle);
			      //let json = JSON.stringify(editorContent); //editor에담긴 String을 json형식으로 변환 
			      let xhr = new XMLHttpRequest();

			      xhr.open("POST", `reg`, true);
			      xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded"); //post로 보낼때 json로 보낸다

			      xhr.onload = function () {};
			      let allData = { "title": eitorTitle, "content": editorContent };
			      xhr.send(allData);

			      console.log("전송완료");
			    });
				
				
				
			} )
			.catch( error => {
				console.error( 'Oops, something gone wrong!' );
				console.error( 'Please, report the following error in the https://github.com/ckeditor/ckeditor5 with the build id and the error stack trace:' );
				console.warn( 'Build id: 10ge4teti4fh-7y3lpv23ta33' );
				console.error( error );
			} );
