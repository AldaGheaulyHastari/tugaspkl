<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

		<?php echo $error; ?>
		<?php echo form_open_multipart('upload/aksi_upload'); ?>

		<input type="file" name="foto">

		<br/> <br/>

		<input type="submit" name="upload">

	</form>

</body>
</html>