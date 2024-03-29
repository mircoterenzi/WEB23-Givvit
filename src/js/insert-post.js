document.addEventListener("DOMContentLoaded", function () {
    const insertPostForm = document.getElementById("insert-post");

    let path = "open-post.php?postId=" ;

    insertPostForm.addEventListener("submit", function (event) {
        event.preventDefault();
        saveFormData();
    });

    async function saveFormData() {
        try {
            const formDataUser = new FormData()
            formDataUser.append('title', document.getElementById("title").value)
            formDataUser.append('theme', document.getElementById("theme").value) 
            formDataUser.append('amount', document.getElementById("amount").value)
            formDataUser.append('shortDesc', document.getElementById("shortDesc").value)
            formDataUser.append('fullDesc', document.getElementById("fullDesc").value)

            const response = await axios.post('./api/insert-post.php', formDataUser);
            
            if (response.data["insertDone"]) {
                document.getElementById("result-post").innerText = "Insert done !!";
                const postId = response.data["PostId"];
                path = path + postId;
                await handleImageUpload(postId);
            } else {
                document.getElementById("result-post").innerText = response.data.errorInsert;
            }
        } catch (error) {
            console.error('Error:', error);
            document.getElementById("result-post").innerText = 'An error occurred while saving the post.';
        }
    }

    async function handleImageUpload(postId) {
        const fileInput = document.getElementById("img");

        if (fileInput.files.length > 0) {
            const uploadPromises = [];

            for (let i = 0; i < fileInput.files.length; i++) {
                const formDataImage = new FormData();
                formDataImage.append("image", fileInput.files[i]);

                const uploadPromise = axios.post('./api/upload-image.php', formDataImage)
                    .then(responseUpload => {
                        if (!responseUpload.data.uploadDone) {
                            throw new Error(responseUpload.data.errorInUpload);
                        }
                        return responseUpload.data.fileName; // Return the file name
                    });

                uploadPromises.push(uploadPromise);
            }

            try {
                const fileNames = await Promise.all(uploadPromises);
                for(let i = 0; i < fileNames.length; i++){
                    const formDataFile = new FormData();
                    formDataFile.append("postId",postId);
                    formDataFile.append("fileName",fileNames[i]);
                    const result = await axios.post('./api/add-img-to-file.php', formDataFile);
                }
            } catch (error) {
                console.error('Error during image upload:', error);
                document.getElementById("result-post").innerText = 'An error occurred during image upload.';
            }
        }
        setTimeout(() => document.location.href = path, 100);
    }
});
