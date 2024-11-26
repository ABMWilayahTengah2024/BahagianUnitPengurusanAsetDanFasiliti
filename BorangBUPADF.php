<?php
// Enable error reporting for debugging
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Database connection settings
$host = 'localhost';
$dbname = 'unit_pengurusan_aset_fasiliti';
$username = 'root';
$password = '';

// Create a connection
$conn = mysqli_connect($host, $username, $password, $dbname);

// Check the connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Check if the form was submitted
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Check if the expected POST keys exist
    $tarikh = isset($_POST['tarikh']) ? $_POST['tarikh'] : null;
    $hari = isset($_POST['hari']) ? $_POST['hari'] : null;
    $lokasi = isset($_POST['lokasi']) ? $_POST['lokasi'] : null;
    $tajuk = isset($_POST['tajuk']) ? $_POST['tajuk'] : null;

    // Ensure the required fields are not null
    if ($tarikh && $hari && $lokasi && $tajuk) {
        // Handle file uploads
        $uploadedFiles = isset($_FILES['gambar']) ? $_FILES['gambar'] : null;
        $uploadFileNames = [];

        $uploadDir = "uploads/";

        // Ensure the upload directory exists
        if (!is_dir($uploadDir)) {
            mkdir($uploadDir, 0777, true);
        }

        if ($uploadedFiles && count($uploadedFiles['name']) > 0) {
            // Process each uploaded file
            for ($i = 0; $i < count($uploadedFiles['name']); $i++) {
                if (!empty($uploadedFiles['name'][$i])) {
                    $fileName = basename($uploadedFiles['name'][$i]);
                    $targetFilePath = $uploadDir . $fileName;
                    $fileType = strtolower(pathinfo($targetFilePath, PATHINFO_EXTENSION));

                    // Check if file is an image
                    $check = getimagesize($uploadedFiles['tmp_name'][$i]);
                    if ($check !== false && in_array($fileType, ['jpg', 'jpeg', 'png', 'gif'])) {
                        // Move the file to the upload directory
                        if (move_uploaded_file($uploadedFiles['tmp_name'][$i], $targetFilePath)) {
                            $uploadFileNames[] = $fileName;
                        } else {
                            echo "Error: There was an error uploading " . $fileName . ".";
                        }
                    } else {
                        echo "Error: File " . $fileName . " is not a valid image.";
                    }
                }
            }
        }

        // Convert the array of filenames into a comma-separated string
        $gambar = implode(',', $uploadFileNames);

        // Prepare an SQL statement for insertion
        $sql = "INSERT INTO borangbupadf (tarikh, hari, lokasi, tajuk, gambar) VALUES (?, ?, ?, ?, ?)";

        // Initialize statement
        $stmt = mysqli_stmt_init($conn);

        if (mysqli_stmt_prepare($stmt, $sql)) {
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "sssss", $tarikh, $hari, $lokasi, $tajuk, $gambar);

            // Execute the statement
            if (mysqli_stmt_execute($stmt)) {
                echo "<script>alert('Form submitted successfully!');</script>";
            } else {
                echo "Error: " . mysqli_stmt_error($stmt);
            }

            // Close the statement
            mysqli_stmt_close($stmt);
        } else {
            echo "Error: Could not prepare SQL statement.";
        }
    } else {
        echo "<script>alert('Please fill in all required fields.');</script>";
    }
}

// Close the connection
mysqli_close($conn);
?>

<!DOCTYPE HTML>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BORANG BAHAGIAN UNIT PENGURUSAN ASET & FASILITI</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f8f8;
            color: #333;
			background-image: url('brochureabm.jpg');
			background-position: center;
        }

        .image-container {
            text-align: center;
            margin: 20px 0;
        }

        .image-container img {
            max-width: 150px;
            /* Fixed size for logo */
            height: auto;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h1 {
            font-size: 1.5em;
            margin-bottom: 20px;
            text-align: center;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="date"],
        textarea,
        input[type="file"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1em;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        @media (max-width: 600px) {
            .container {
                padding: 10px;
            }

            h1 {
                font-size: 1.2em;
            }

            label,
            input[type="submit"] {
                font-size: 0.9em;
            }
        }

        input[type="button"] {
            background-color: #4CAF50;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1em;
            transition: background-color 0.3s;
        }

        input[type="button"]:hover {
            background-color: #45a049;
        }

        .image-preview {
            display: flex;
            flex-wrap: wrap;
            margin-top: 10px;
        }

        .image-preview-item {
            position: relative;
            display: inline-block;
            margin-right: 10px;
            margin-bottom: 10px;
        }

        .image-preview-item img {
            width: 100px;
            height: auto;
        }

        .image-preview-item .delete-icon {
            position: absolute;
            top: 5px;
            right: 5px;
            background-color: red;
            color: white;
            border: none;
            border-radius: 50%;
            cursor: pointer;
            font-size: 12px;
            width: 20px;
            height: 20px;
            text-align: center;
            line-height: 20px;
        }
		
        .drop-zone {
            border: 2px dashed #ccc;
            border-radius: 4px;
            padding: 20px;
            text-align: center;
            cursor: pointer;
            margin-top: 10px;
        }

        .drop-zone.hover {
            border-color: #333;
            background-color: #f0f0f0;
        }
    </style>
    <script>
        function validateFileCount(input) {
            const maxFiles = 6; // Set the maximum number of files allowed
            const previewContainer = document.getElementById('imagePreview');

            // Clear the existing previews
            previewContainer.innerHTML = '';

            if (input.files.length > maxFiles) {
                alert(`Maksimum ialah ${maxFiles} gambar.`);
                input.value = '';
            } else {
                // Array to hold new files
                const selectedFiles = Array.from(input.files);

                // Loop through the selected files and preview each one
                selectedFiles.forEach((file, index) => {
                    const fileType = file.type;
                    if (fileType.startsWith('image/')) {
                        const reader = new FileReader();
                        reader.onload = function(e) {
                            // Create image container with delete button
                            const imageItem = document.createElement('div');
                            imageItem.classList.add('image-preview-item');

                            const img = document.createElement('img');
                            img.src = e.target.result;

                            const deleteButton = document.createElement('button');
                            deleteButton.classList.add('delete-icon');
                            deleteButton.innerHTML = '×';
                            deleteButton.onclick = function() {
                                removeImage(index, input);
                            };

                            imageItem.appendChild(img);
                            imageItem.appendChild(deleteButton);
                            previewContainer.appendChild(imageItem);
                        };
                        reader.readAsDataURL(file);
                    } else {
                        alert(`File ${file.name} bukan gambar yang sah.`);
                    }
                });
            }
        }

        // Function to remove image from preview and file list
        function removeImage(index, input) {
            const fileListArray = Array.from(input.files);

            // Remove the file at the given index
            fileListArray.splice(index, 1);

            // Create a new FileList object with the remaining files
            const newFileList = new DataTransfer();
            fileListArray.forEach(file => newFileList.items.add(file));

            // Update the input with the new file list
            input.files = newFileList.files;

            // Re-validate to update the preview
            validateFileCount(input);
        }

        function setAction(action) {
            var form = document.getElementById('reportForm');
            form.action = action;
            form.submit();
        }
		
		document.addEventListener('DOMContentLoaded', function() {
			// Attach event listeners to the drop zone
			const dropZones = document.querySelectorAll('.drop-zone');
			dropZones.forEach(dropZone => {
				dropZone.addEventListener('click', () => {
					// Simulate a click on the file input element
					dropZone.querySelector('input[type="file"]').click();
				});

				dropZone.addEventListener('dragover', handleDragOver);
				dropZone.addEventListener('drop', handleFileDrop);
			});
		});

		// Prevent default drag behavior and add hover effect
		function handleDragOver(event) {
			event.preventDefault();
			event.currentTarget.classList.add('hover');
		}

		// Handle file drop into the drop zone
		function handleFileDrop(event) {
			event.preventDefault();
			event.currentTarget.classList.remove('hover');
			
			const input = event.currentTarget.querySelector('input[type="file"]');
			const newFiles = Array.from(event.dataTransfer.files);
			const existingFiles = Array.from(input.files);
			
			// Combine new files with existing files
			const combinedFiles = existingFiles.concat(newFiles);

			// Create a new FileList object from the combined files
			const dataTransfer = new DataTransfer();
			combinedFiles.forEach(file => dataTransfer.items.add(file));
			input.files = dataTransfer.files;

			// Preview and validate the combined file list
			validateFileCount(input);
		}
    </script>
</head>

<body>

    <div class="container">
        <div class="image-container">
            <img src="<?php echo 'abmlogo.png'; ?>" alt="Logo ABM">
        </div>
        <h1>BORANG LAPORAN BAHAGIAN UNIT PENGURUSAN ASET & FASILITI</h1>

        <!-- Add method and enctype attributes -->
        <form id="reportForm" method="POST" enctype="multipart/form-data">

            <label for="tarikh">Tarikh: </label>
            <input type="date" id="tarikh" name="tarikh" required>

            <label for="hari">Hari: </label>
            <input type="text" id="hari" name="hari" required>

            <label for="lokasi">Lokasi: </label>
            <input type="text" id="lokasi" name="lokasi" required>

            <label for="tajuk">Tajuk: </label>
            <textarea id="tajuk" name="tajuk" required></textarea>

            <label for="gambar">Sila Letakkan Gambar (Maksimum: 6 Gambar)</label>
			<div class="drop-zone" id="drop-zone-<?php echo $row['id']; ?>" 
				 ondragover="handleDragOver(event)" 
				 ondrop="handleFileDrop(event, <?php echo $row['id']; ?>)">
				<p>Drag and drop files here, or click to select files</p>
				<input type="file" id="fileInput-<?php echo $row['id']; ?>" name="gambar[]" multiple style="display:none;" onchange="previewImages(this, <?php echo $row['id']; ?>);" />
			</div>

            <!-- Preview container for images -->
            <div class="image-preview" id="imagePreview"></div>

            <input type="submit" value="HANTAR"><br><br>
            <input type="button" value="KEMBALI" onclick="setAction('BorangLaporanBulanan.php')">

        </form>
    </div>
</body>

</html>