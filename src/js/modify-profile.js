document.addEventListener('DOMContentLoaded', function () {
    document.getElementById("edit-profile-form").addEventListener("submit", function (event) {
        event.preventDefault();
        editprof();
        event.target.reset();
    });
});

async function addtodb(formDataUser) {
    try {
        const response = await axios.post('./api/edit-profile.php', formDataUser);
        if (response.data["updateDone"]) {
            document.getElementById("result-edit").innerText = "edit done !!";
            setTimeout(() =>location.reload(), 100);
        } else {
            document.getElementById("result-edit").innerText = response.data["errorupdate"];
        }
    } catch (error) {
        console.error('Error adding to the database:', error);
    }
}

async function editprof() {
    const formDataUser = new FormData();
    formDataUser.append('name', document.getElementById("name").value);
    formDataUser.append('surname', document.getElementById("surname").value);
    formDataUser.append('username', document.getElementById("username").value);
    formDataUser.append('desc', document.getElementById("desc").value);

    const fileInput = document.getElementById("profile-img");

    if (fileInput.files.length > 0) {
        const formDataImage = new FormData();
        formDataImage.append("image", fileInput.files[0]);
        try {
            const responseUpload = await axios.post('./api/upload-image.php', formDataImage);
            if (!responseUpload.data["uploadDone"]) {
                document.getElementById("result-edit").innerText = responseUpload.data["errorInUpload"];
            } else {
                formDataUser.append('image', responseUpload.data["fileName"]);
                await addtodb(formDataUser);
            }
        } catch (error) {
            console.error('Error uploading image:', error);
        }
    } else {
        await addtodb(formDataUser);
    }
}
