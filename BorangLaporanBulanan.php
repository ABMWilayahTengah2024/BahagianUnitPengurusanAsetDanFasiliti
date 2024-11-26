<!DOCTYPE HTML>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BORANG LAPORAN BULANAN AKADEMI BINAAN MALAYSIA WILAYAH TENGAH</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            text-align: center;
            background-color: #f4f4f4;
			background-image: url('brochureabm.jpg');
        }
        h1, h2 {
            margin: 10px 0;
        }
        form {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin: 20px auto;
            padding: 20px;
            max-width: 90%;
        }
        input[type="submit"] {
            background-color: #007bff;
            border: none;
            border-radius: 4px;
            color: #fff;
            cursor: pointer;
            font-size: 16px;
            padding: 10px;
            margin: 10px 0;
            width: calc(100% - 22px);
            max-width: 300px;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .image-container {
            text-align: center;
            margin-top: 5px;
        }
        .image-container img {
            max-width: 40%;
            height: auto;
        }
		
		input[type="button"] {
			background: linear-gradient(45deg, #007bff, #0056b3);
			border: none;
			border-radius: 8px;
			color: #fff;
			cursor: pointer;
			font-size: 16px;
			padding: 10px 20px;
			margin: 10px 0;
			width: calc(100% - 22px);
			max-width: 400px;
			display: block;
			margin-left: auto;
			margin-right: auto;
			transition: background 0.3s, box-shadow 0.3s, transform 0.3s;
			box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
		}
		input[type="button"]:hover {
			background: linear-gradient(45deg, #0056b3, #007bff);
			box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
			transform: scale(1.05);
		}

		
    </style>
</head>
<body>

    <form id="reportForm" method="post">
        <div class="image-container">
            <img src="abmlogo.png" alt="Logo ABM">
        </div>
        <h1>BORANG LAPORAN BULANAN AKADEMI BINAAN MALAYSIA WILAYAH TENGAH</h1>
        <h2>Sila pilih borang untuk diisi</h2>
        <input type="button" value="BORANG BAHAGIAN UNIT PENGURUSAN ASET & FASILITI" onclick="setAction('BorangBUPADF.php')"><br>
        <input type="button" value="BORANG ADUAN KEROSAKAN" onclick="setAction('BorangAduanKerosakan.php')"><br>
        <input type="button" value="BORANG PINJAMAN KENDERAAN" onclick="setAction('BorangPinjamanKenderaan.php')"><br>
        <input type="button" value="BORANG LAPORAN TUKANG CUCI" onclick="setAction('BorangLaporanTukangCuci.php')"><br>
		<input type="button" value="BORANG PEMANTAUAN DAN PEMERIKSAAN" onclick="setAction('BorangPemantauanDanPemeriksaan.php')"><br>
		<input type="button" value="SEMAKAN PEMBERSIHAN TANDAS" onclick="setAction('SemakanPembersihanTandas.php')"><br>
		<h2>Untuk Kegunaan Admin</h2>
		<input type="button" value="LIHAT LAPORAN" onclick="setAction('index2.php')">
		<input type="button" value="KEMBALI" onclick="setAction('index.php')">
    </form>

    <script>
        function setAction(action) {
            var form = document.getElementById('reportForm');
            form.action = action;
            form.submit();
        }
    </script>

</body>
</html>
