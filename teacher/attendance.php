<?php

//attendance.php

include('header.php');

?>

<div class="container" style="margin-top:30px">
    <div class="card">
        <div class="card-header">
            <div class="row">
                <div class="col-md-9">Danh sách điểm danh</div>
                <div class="col-md-3" align="right">
                    <button type="button" id="report_button" class="btn btn-danger btn-sm">Báo cáo</button>
                    <button type="button" id="add_button" class="btn btn-info btn-sm">Thêm</button>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <span id="message_operation"></span>
                <table class="table table-striped table-bordered" id="attendance_table">
                    <thead>
                        <tr>
                            <th>Tên sinh viên</th>
                            <th>Mã sinh viên</th>
                            <th>Lớp</th>
                            <th>Trạng thái</th>
                            <th>Ngày</th>
                        </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

</body>

</html>

<!-- <script type="text/javascript" src="js/bootstrap-datepicker.js"></script>
<link rel="stylesheet" href="css/datepicker.css" /> -->
<script type="text/javascript" src="../js/bootstrap-datepicker.js"></script>
<link rel="stylesheet" href="../css/datepicker.css" />
<meta charset="UTF-8">


<style>
.datepicker {
    z-index: 1600 !important;
    /* has to be larger than 1050 */
}
</style>

<?php

$query = "
SELECT * FROM tbl_grade WHERE grade_id = (SELECT teacher_grade_id FROM tbl_teacher 
    WHERE teacher_id = '".$_SESSION["teacher_id"]."')
";

$statement = $connect->prepare($query);
$statement->execute();
$result = $statement->fetchAll();

?>

<div class="modal" id="formModal">
    <div class="modal-dialog">
        <form method="post" id="attendance_form">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title" id="modal_title"></h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    <?php
          foreach($result as $row)
          {
          ?>
                    <div class="form-group">
                        <div class="row">
                            <label class="col-md-4 text-right">Lớp <span class="text-danger">*</span></label>
                            <div class="col-md-8">
                                <?php
                echo '<label>'.$row["grade_name"].'</label>';
                ?>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label class="col-md-4 text-right">Ngày <span class="text-danger">*</span></label>
                            <div class="col-md-8">
                                <input type="text" name="attendance_date" id="attendance_date" class="form-control"
                                    readonly />
                                <span id="error_attendance_date" class="text-danger"></span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group" id="student_details">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th>Mã sinh viên</th>
                                        <th>Tên sinh viên</th>
                                        <th>Có mặt</th>
                                        <th>Vắng mặt</th>
                                    </tr>
                                </thead>
                                <?php
                $sub_query = "
                  SELECT * FROM tbl_student 
                  WHERE student_grade_id = '".$row["grade_id"]."'
                ";
                $statement = $connect->prepare($sub_query);
                $statement->execute();
                $student_result = $statement->fetchAll();
                foreach($student_result as $student)
                {
                ?>
                                <tr>
                                    <td><?php echo $student["student_roll_number"]; ?></td>
                                    <td>
                                        <?php echo $student["student_name"]; ?>
                                        <input type="hidden" name="student_id[]"
                                            value="<?php echo $student["student_id"]; ?>" />
                                    </td>
                                    <td>
                                        <input type="radio"
                                            name="attendance_status<?php echo $student["student_id"]; ?>"
                                            value="Present" />
                                    </td>
                                    <td>
                                        <input type="radio"
                                            name="attendance_status<?php echo $student["student_id"]; ?>" checked
                                            value="Absent" />
                                    </td>
                                </tr>
                                <?php
                }
                ?>
                            </table>
                        </div>
                    </div>
                    <?php
          }
          ?>
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <input type="hidden" name="action" id="action" value="Add" />
                    <input type="submit" name="button_action" id="button_action" class="btn btn-success btn-sm"
                        value="Thêm" />
                    <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal">Đóng</button>
                </div>

            </div>
        </form>
    </div>
</div>

<div class="modal" id="reportModal">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Tạo báo cáo</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                <div class="form-group">
                    <div class="input-daterange">
                        <input type="text" name="from_date" id="from_date" class="form-control" placeholder="Từ ngày"
                            readonly />
                        <span id="error_from_date" class="text-danger"></span>
                        <br />
                        <input type="text" name="to_date" id="to_date" class="form-control" placeholder="Đến ngày"
                            readonly />
                        <span id="error_to_date" class="text-danger"></span>
                    </div>
                </div>
            </div>
            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" name="create_report" id="create_report" class="btn btn-success btn-sm">Tạo báo
                    cáo</button>
                <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal">Đóng</button>
            </div>

        </div>
    </div>
</div>

<script>
$(document).ready(function() {

    var dataTable = $('#attendance_table').DataTable({
        "processing": true,
        "serverSide": true,
        "order": [],
        "ajax": {
            url: "attendance_action.php",
            method: "POST",
            data: {
                action: "fetch"
            }
        }
    });

    $('#attendance_date').datepicker({
        format: 'yyyy-mm-dd',
        autoclose: true,
        container: '#formModal modal-body'
    });

    function clear_field() {
        $('#attendance_form')[0].reset();
        $('#error_attendance_date').text('');
    }

    $('#add_button').click(function() {
        $('#modal_title').text("Điểm danh");
        $('#formModal').modal('show');
        clear_field();
    });

    $('#attendance_form').on('submit', function(event) {
        event.preventDefault();
        $.ajax({
            url: "attendance_action.php",
            method: "POST",
            data: $(this).serialize(),
            dataType: "json",
            beforeSend: function() {
                $('#button_action').val('Validate...');
                $('#button_action').attr('disabled', 'disabled');
            },
            success: function(data) {
                $('#button_action').attr('disabled', false);
                $('#button_action').val($('#action').val());
                if (data.success) {
                    $('#message_operation').html('<div class="alert alert-success">' + data
                        .success + '</div>');
                    clear_field();
                    $('#formModal').modal('hide');
                    dataTable.ajax.reload();
                }
                if (data.error) {
                    if (data.error_attendance_date != '') {
                        $('#error_attendance_date').text(data.error_attendance_date);
                    } else {
                        $('#error_attendance_date').text('');
                    }
                }
            }
        })
    });

    $('.input-daterange').datepicker({
        todayBtn: "linked",
        format: "yyyy-mm-dd",
        autoclose: true,
        container: '#formModal modal-body'
    });

    $(document).on('click', '#report_button', function() {
        $('#reportModal').modal('show');
    });

    $('#create_report').click(function() {
        var from_date = $('#from_date').val();
        var to_date = $('#to_date').val();
        var error = 0;
        if (from_date == '') {
            $('#error_from_date').text('Chọn ngày bắt đầu!');
            error++;
        } else {
            $('#error_from_date').text('');
        }

        if (to_date == '') {
            $('#error_to_date').text("Chọn ngày kết thúc!");
            error++;
        } else {
            $('#error_to_date').text('');
        }

        if (error == 0) {
            $('#from_date').val('');
            $('#to_date').val('');
            $('#formModal').modal('hide');
            window.open("report.php?action=attendance_report&from_date=" + from_date + "&to_date=" +
                to_date);
        }

    });

});
</script>