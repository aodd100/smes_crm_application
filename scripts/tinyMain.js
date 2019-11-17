tinymce.init({
        selector: "textarea",
        theme: "modern",
        browser_spellcheck: true,
        plugins: [
            "advlist autolink lists link image charmap print preview hr anchor pagebreak",
            "searchreplace wordcount visualblocks visualchars code fullscreen",
            "insertdatetime media nonbreaking save table contextmenu directionality",
            "emoticons template paste textcolor imagetools image"
        ],
        toolbar1: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image",
        toolbar2: "print preview media | forecolor backcolor emoticons | code",
        image_title: true,
        relative_urls: false,
        manu_bar: false,
        remove_script_host: false,
        convert_urls: true,
        automatic_uploads: true,
        file_picker_types: 'image',
        images_upload_base_path: '/images/basepath',
        file_picker_callback: function (cb, value, meta) {
            var input = document.createElement('input');
            input.setAttribute('type', 'file');
            input.setAttribute('accept', 'image/*');

            // Note: In modern browsers input[type="file"] is functional without 
            // even adding it to the DOM, but that might not be the case in some older
            // or quirky browsers like IE, so you might want to add it to the DOM
            // just in case, and visually hide it. And do not forget do remove it
            // once you do not need it anymore.

            input.onchange = function () {
                var file = this.files[0];
                var reader = new FileReader();

                reader.onload = function () {

                    // Note: Now we need to register the blob in TinyMCEs image blob
                    // registry. In the next release this part hopefully won't be
                    // necessary, as we are looking to handle it internally.
                    //var id = 'blobid' + (new Date()).getTime();
                    //var blobCache =  tinymce.activeEditor.editorUpload.blobCache;
                    //var base64 = reader.result.split(',')[1];
                    //var blobInfo = blobCache.create(id, file, base64);

                    //blobCache.add( blobInfo );

                    // call the callback and populate the Title field with the file name

                    cb(reader.result, { title: 'hola' });
                };
                reader.readAsDataURL(file);
            };
                input.click();
    },
    images_upload_handler: function (blobInfo, success, failure) {
        var xhr, formData;

        xhr = new XMLHttpRequest();
        xhr.withCredentials = false;
        xhr.open('POST', 'EmailCampaing/postAcceptor');

        xhr.onload = function () {
            var json;

            if (xhr.status != 200) {
                failure('HTTP Error: ' + xhr.status);
                return;
            }

            json = JSON.parse(xhr.responseText);

            if (!json || typeof json.location != 'string') {
                failure('Invalid JSON: ' + xhr.responseText);
                return;
            }

            success(json.location);
        };

        formData = new FormData();
        formData.append('file', blobInfo.blob(), blobInfo.filename());
        ``
        xhr.send(formData);
    }
});

//function fileBrowserCallBack() {

//}

