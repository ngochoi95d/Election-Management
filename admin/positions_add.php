<?php
	include 'includes/session.php';

	if(isset($_POST['add'])){
		$description = $_POST['description'];
		$max_vote = $_POST['max_vote'];

		$sql = "SELECT * FROM positions ORDER BY priority DESC LIMIT 1";
		$query = $conn->query($sql);
		$row = $query->fetch_assoc();

		$priority = $row['priority'] + 1;

		$sql = "INSERT INTO positions (description, max_vote, priority) VALUES ('$description', '$max_vote', '$priority')";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Thêm thành công chức vụ ';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}

	}
	else{
		$_SESSION['error'] = 'Điền vào biểu mẫu trước ';
	}

	header('location: positions.php');
?>
