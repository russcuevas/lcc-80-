$('form#importUsersForm').on('submit', function (event) {
    event.preventDefault();

    const form = $(this)[0];
    const formData = new FormData(form);

    const fileInput = $(this).find('input[type="file"]')[0];
    if (!fileInput.files.length) {
        swal("Warning!", "Please select a CSV file before uploading.", "warning");
        return;
    }

    importingCSV();

    $.ajax({
        url: $(this).attr('action'),
        type: 'POST',
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        data: formData,
        processData: false,
        contentType: false,
        success: function (response) {
            HoldOn.close();
            swal({
                title: "Success!",
                text: response.success || "Users imported successfully!",
                icon: "success",
            }).then(() => {
                location.reload();
            });
        },
        error: function (xhr) {
            HoldOn.close();
            let errorMessage = 'An error occurred while importing the CSV.';
            if (xhr.responseJSON && xhr.responseJSON.errors) {
                $.each(xhr.responseJSON.errors, function (key, value) {
                    errorMessage += `\n- ${value[0]}`;
                });
            } else if (xhr.responseJSON && xhr.responseJSON.error) {
                errorMessage += `\n${xhr.responseJSON.error}`;
            }
            swal("Error!", errorMessage, "error");
        }
    });
});

function importingCSV() {
    HoldOn.open({
        theme: 'sk-circle',
        message: '<div class="loading-message">Please wait, importing CSV file...</div>',
        backgroundColor: 'rgba(0, 0, 0, 0.7)',
        textColor: '#fff'
    });
}
