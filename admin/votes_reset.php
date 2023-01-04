<?php
	include 'includes/session.php';

	$sql = "DELETE FROM votes";
	if($conn->query($sql)){
		$_SESSION['success'] = "Đã đặt lại phiếu bầu thành công ";
	}
	else{
		$_SESSION['error'] = "Đã xảy ra lỗi khi đặt lại ";
	}

	header('location: votes.php');

?>
