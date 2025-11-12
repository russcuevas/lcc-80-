<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>LCC - Assistments</title>
    <!-- Favicon-->
    <link rel="icon" href="{{ asset('auth/images/logo.png') }}" type="image/x-icon">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">
    <!-- Bootstrap Core Css -->
    <link href="{{ asset('admin/plugins/bootstrap/css/bootstrap.css') }}" rel="stylesheet">
    <!-- Bootstrap Select Css -->
    <link href="{{ asset('admin/plugins/bootstrap-select/css/bootstrap-select.css') }}" rel="stylesheet">
    <!-- Waves Effect Css -->
    <link href="{{ asset('admin/plugins/node-waves/waves.css') }}" rel="stylesheet" />
    <!-- Animation Css -->
    <link href="{{ asset('admin/plugins/animate-css/animate.css') }}" rel="stylesheet" />
    <!-- JQuery DataTable Css -->
    <link href="{{ asset('admin/plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css') }}" rel="stylesheet">
    <!-- Custom Css -->
    <link href="{{ asset('admin/css/style.css') }}" rel="stylesheet">
    <link href="{{ asset('admin/css/custom.css') }}" rel="stylesheet">
    <link href="{{ asset('admin/css/themes/all-themes.css') }}" rel="stylesheet" />
    <link rel="stylesheet" href="{{ asset('admin/css/HoldOn.css') }}">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
        integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link
    rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/handsontable@14.3.0/dist/handsontable.min.css"
  />
</head>

<body class="theme-red">
    <!-- Page Loader -->
    <div class="page-loader-wrapper">
        <div class="loader">
            <div class="preloader">
                <div class="spinner-layer pl-red">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
            </div>
            <p>Please wait...</p>
        </div>
    </div>
    <!-- #END# Page Loader -->

    <!-- Overlay For Sidebars -->
    <div class="overlay"></div>
    <!-- #END# Overlay For Sidebars -->

    <!-- Top Bar -->
    @include('admin.components.top_bar')
    <!-- #Top Bar -->
    
    <section>
        <!-- Left Sidebar -->
        @include('admin.components.left_sidebar')
        <!-- #END# Left Sidebar -->
        <!-- Right Sidebar -->
        @include('admin.components.right_sidebar')
        <!-- #END# Right Sidebar -->
    </section>

    <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <ol style="font-size: 15px;" class="breadcrumb breadcrumb-col-red">
                    <li><a href="dashboard.html"><i style="font-size: 20px;" class="material-icons">home</i>
                            Dashboard</a></li>
                    <li class="active"><i style="font-size: 20px;" class="material-icons">groups</i> 
                        Examinees Management
                    </li>
                    <li class="active"><i style="font-size: 20px;" class="material-icons">badge</i> 
                        Add Examiners
                    </li>
                </ol>
            </div>

            <!-- Widgets -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2 style="font-size: 25px; font-weight: 900; color: #000080;">
                                Add Examiners
                            </h2>
                        </div>
                        <div class="body">
                            <div>
                                <a class="btn bg-red waves-effect" style="margin-bottom: 15px;"  id="exportCSV">EXPORT CSV</a>
                            </div>
                                <div id="message" style="display:none; margin-bottom:15px; padding:10px; border-radius:5px;"></div>

                            <div id="hot"></div>
                            
                        </div>
                    </div>
                </div>
            </div>

    </section>

    <!-- Jquery Core Js -->
    <script src="{{ asset('admin/plugins/jquery/jquery.min.js') }}"></script>

    <!-- Bootstrap Core Js -->
    <script src="{{ asset('admin/plugins/bootstrap/js/bootstrap.js') }}"></script>

    <!-- Select Plugin Js -->
    <script src="{{ asset('admin/plugins/bootstrap-select/js/bootstrap-select.js') }}"></script>

    <!-- Select Plugin Js -->
    <script src="{{ asset('admin/plugins/bootstrap-select/js/bootstrap-select.js') }}"></script>

    <!-- Slimscroll Plugin Js -->
    <script src="{{ asset('admin/plugins/jquery-slimscroll/jquery.slimscroll.js') }}"></script>

    <!-- Jquery Validation Plugin Css -->
    <script src="{{ asset('admin/plugins/jquery-validation/jquery.validate.js') }}"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="{{ asset('admin/plugins/node-waves/waves.js') }}"></script>

    <!-- Jquery DataTable Plugin Js -->
    <script src="{{ asset('admin/plugins/jquery-datatable/jquery.dataTables.js') }}"></script>
    <script src="{{ asset('admin/plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js') }}"></script>

    {{-- SWEETALERT --}}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <!-- Custom Js -->
    <script src="{{ asset('admin/js/pages/forms/form-validation.js') }}"></script>
    <script src="{{ asset('admin/js/admin.js') }}"></script>
    <script src="{{ asset('admin/js/pages/tables/jquery-datatable.js') }}"></script>
    <script src="{{ asset('admin/js/HoldOn.js') }}"></script>

    {{-- AJAX REQUEST --}}
    <script src="{{ asset('admin/js/ajax/change_password/change_password.js')}}"></script>
    <script src="{{ asset('admin/js/ajax/default_id/import_id.js') }}"></script>
    <script src="{{ asset('admin/js/ajax/default_id/add_default_id.js') }}"></script>
    <script src="{{ asset('admin/js/ajax/default_id/delete_default_id.js') }}"></script>
    <script src="{{ asset('admin/js/ajax/default_id/delete_bulk_default_id.js') }}"></script>
    <!-- Demo Js -->
    <script src="{{ asset('admin/js/demo.js') }}"></script>
      <script src="https://cdn.jsdelivr.net/npm/handsontable@14.3.0/dist/handsontable.min.js"></script>

<script>
const container = document.getElementById("hot");
let hot;
let savingRows = {};
let debounceTimers = {};
let originalRowCount = 0; // Track original rows (excluding header)

// Generate next Default ID
function getNextDefaultId() {
    const data = hot.getData();
    let maxId = 202500;
    for (let i = 1; i < data.length; i++) {
        const id = parseInt(data[i][0]);
        if (!isNaN(id) && id > maxId) maxId = id;
    }
    return (maxId + 1).toString();
}

// Show message
function showMessage(text, type) {
    const msgDiv = document.getElementById('message');
    msgDiv.textContent = text;
    msgDiv.style.display = 'block';

    if (type === 'success') {
        msgDiv.style.backgroundColor = '#d4edda';
        msgDiv.style.color = '#155724';
        msgDiv.style.border = '1px solid #c3e6cb';
    } else if (type === 'error') {
        msgDiv.style.backgroundColor = '#f8d7da';
        msgDiv.style.color = '#721c24';
        msgDiv.style.border = '1px solid #f5c6cb';
    } else {
        msgDiv.style.backgroundColor = '#fff3cd';
        msgDiv.style.color = '#856404';
        msgDiv.style.border = '1px solid #ffeeba';
    }

    // Automatically hide after 5 seconds
    setTimeout(() => {
        msgDiv.style.display = 'none';
    }, 5000);
}

// Load examiner data
async function loadExaminersData() {
    try {
        const response = await fetch("{{ route('admin.examiners.excel.data') }}");
        const examinerData = await response.json();

        const data = [
            ["Default ID", "Fullname", "Gender", "Age", "Email", "Strand", "Birthday", "Password"],
            ...examinerData.map(row => [
                row.default_id || "",
                row.fullname || "",
                row.gender || "",
                row.age || "",
                row.email || "",
                row.strand || "",
                row.birthday || "",
                row.plain_password || "lcc1234"
            ])
        ];

        originalRowCount = examinerData.length; // exclude header row

        hot = new Handsontable(container, {
            data: data,
            rowHeaders: true,
            colHeaders: true,
            contextMenu: true,
            licenseKey: "non-commercial-and-evaluation",
            stretchH: "all",
            minSpareRows: 1,
            height: "auto",
            filters: true,
            dropdownMenu: true,
            columns: [
                { readOnly: true }, // Default ID
                {}, // Fullname
                {}, // Gender
                {}, // Age
                {}, // Email
                {}, // Strand
                {}, // Birthday
                { readOnly: true } // Password
            ],
            afterOnCellMouseDown: function(event, coords) {
                const row = coords.row;
                if (row === 0) return; // Skip header

                const idMeta = hot.getCellMeta(row, 0);
                const pwdMeta = hot.getCellMeta(row, 7);

                // Auto-fill Default ID if blank
                if (!hot.getDataAtCell(row, 0) && !idMeta.assigned) {
                    hot.setDataAtCell(row, 0, getNextDefaultId());
                    hot.setCellMeta(row, 0, 'assigned', true);
                }

                // Auto-fill Password if blank
                if (!hot.getDataAtCell(row, 7) && !pwdMeta.assigned) {
                    hot.setDataAtCell(row, 7, "lcc1234");
                    hot.setCellMeta(row, 7, 'assigned', true);
                }
            }
        });

        // Auto-save on changes
        hot.addHook('afterChange', (changes, source) => {
            if (!changes || source === 'loadData' || source === 'populateFromArray') return;

            const csrfToken = document.querySelector('meta[name="csrf-token"]').content;

            for (const [row, col, oldVal, newVal] of changes) {
                if (row === 0 || oldVal === newVal) continue;
                if (savingRows[row]) continue;

                clearTimeout(debounceTimers[row]);
                debounceTimers[row] = setTimeout(async () => {
                    savingRows[row] = true;

                    const rowData = hot.getDataAtRow(row);
                    const isNew = row > originalRowCount; // rows after originalRowCount are new

                    const payload = {
                        default_id: rowData[0],
                        fullname: rowData[1] || '',
                        gender: rowData[2] || '',
                        age: rowData[3] ? parseInt(rowData[3]) : null,
                        email: rowData[4] || '',
                        strand: rowData[5] || '',
                        birthday: rowData[6] || '',
                        password: rowData[7] || 'lcc1234'
                    };

                    const url = isNew
                        ? "{{ route('admin.examiners.excel.add') }}"
                        : "{{ route('admin.examiners.excel.update') }}";

                    const method = isNew ? 'POST' : 'PUT';

                    try {
                        const response = await fetch(url, {
                            method: method,
                            headers: {
                                'Content-Type': 'application/json',
                                'X-CSRF-TOKEN': csrfToken,
                                'Accept': 'application/json'
                            },
                            body: JSON.stringify(payload)
                        });
                        const result = await response.json();

                        if (response.ok) {
                            showMessage(result.message, 'success');
                            if (isNew) {
                                originalRowCount++; // increment so next row is correctly detected
                            }
                        } else {
                            showMessage(result.message || 'Failed to save', 'error');
                        }
                    } catch (err) {
                        showMessage(err.message, 'error');
                    } finally {
                        savingRows[row] = false;
                    }
                }, 500);
            }
        });

    } catch (error) {
        showMessage('Failed to load examiner data: ' + error.message, 'error');
    }
}

// Initialize
loadExaminersData();


document.getElementById("exportCSV").addEventListener("click", () => {
    const exportPlugin = hot.getPlugin("exportFile");
    exportPlugin.downloadFile("csv", { filename: "Examiners-Data", columnHeaders: true });
});
</script>
</body>

</html>



