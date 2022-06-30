<?php
include('koneksi.php');
$produk = mysqli_query ($koneksi,"select * from d_blog");
while($row = mysqli_fetch_array($produk)) {
	$nama_blog[] = $row['blog'];

	$query = mysqli_query($koneksi, "select sum(jumlah) as jumlah from d_pengunjung where d_blog='".$row['id_blog']."'");
	$row = $query->fetch_array();
	$jumlah_produk[] = $row['jumlah'];
	// code...
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Membuat Grafik Menggunakan chart JS </title>
	<script type="text/javascript" src="chart.js"></script>
</head>
<body>
	<div style="width: 800px; height: 800px;">
		<canvas id ="myChart"></canvas>
	</div>

	<script>
		var ctx = document.getElementById("myChart").getContext('2d');
		var myChart = new Chart (ctx, {
			type: 'bar',
			data: {
				labels: <?php echo json_encode($nama_blog); ?>,
				datasets: [{
					label: 'Grafik Pengunjung',
					data: <?php echo json_encode($jumlah_produk);
?>,
					backgroundColor: 'rgba(255,99,132,0.2)',
					borderColor: 'rgba(255,99,132,1)',
					borderWidth: 1
				}]
			},
			options: {
				scales: {
					yAxes: [{
						ticks: {
							beginAtZero:true
						}
					}]
				}
			}
		});
	</script>
</body>
</html>
<?php
require_once("admin_header.php");
$login_id = $_SESSION['login_id'];
$op = isset($_GET['op']) ? $_GET['op']:'';
switch($op){
    case '':normal();break;
    case 'tambah':tambah();break;
    default:normal();break;
}
require_once("admin_footer.php");