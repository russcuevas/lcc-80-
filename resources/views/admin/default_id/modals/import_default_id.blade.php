<div class="modal fade" id="importDefaultIdModal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-md" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="largeModalLabel">Import Users from CSV</h4>
                <hr style="background-color: #000080; height: 2px; border: none;">
            </div>

            <div class="modal-body">
                <form id="importUsersForm" method="POST" enctype="multipart/form-data" 
                        action="{{ route('admin.default.id.import') }}">
                    @csrf

                    <div class="form-group">
                        <div class="alert alert-info" role="alert" style="color: #212529; background-color: #e8f4fa; border-color: #b6e0fe;">
                            <label style="color: #000080; font-weight: 700; font-size: 16px; display: block;">
                                <i class="fa fa-info-circle"></i> CSV Format Requirements:
                            </label>
                            <ul style="color: #212529; font-size: 14px; margin-left: 20px;">
                                <li>Required: there's a sample csv file to download <br> and it is required to fill up all fields</li>
                                <li>Maximum file size: <b>5MB</b></li>
                            </ul>
                                <a href="{{ route('admin.examiners.excel.page') }}" 
                                class="btn bg-red" 
                                style="margin-top: 20px; font-weight: 600;" 
                                target="_blank">
                                    <i class="fa fa-download"></i> CSV Template
                                </a>
                        </div>
                    </div>


                    <div class="form-group form-float">
                        <label style="color: #212529; font-weight: 600;" class="form-label">Upload CSV File</label>
                        <div class="form-line">
                            <input type="file" name="csv_file" class="form-control" 
                                   accept=".csv,.xlsx,.xls">
                            <div class="help-info">
                                <span style="color: red">*</span> 
                                <span style="color: black">CSV, XLSX, or XLS (max 5MB)</span>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

            <div class="modal-footer">
                <button type="submit" form="importUsersForm" class="btn bg-green waves-effect">
                    <i class="fa fa-upload"></i> IMPORT
                </button>
                <button type="button" class="btn btn-link waves-effect" data-dismiss="modal">
                    CLOSE
                </button>
            </div>
        </div>
    </div>
</div>
