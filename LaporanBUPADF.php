<?php
$host = 'localhost';
$dbname = 'unit_pengurusan_aset_fasiliti';
$username = 'root';
$password = '';

// Function to connect to the database
function getConnection($host, $username, $password, $dbname) {
    $conn = mysqli_connect($host, $username, $password, $dbname);
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
    return $conn;
}

// Establish a single connection
$conn = getConnection($host, $username, $password, $dbname);

// Enable error reporting for debugging (Disable in production)
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Handle POST requests
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Handle delete image request
    if (isset($_POST['delete_image'])) {
        $id = mysqli_real_escape_string($conn, $_POST['id']);
        $image = mysqli_real_escape_string($conn, $_POST['image']);

        // Remove the image from the file system
        $file_path = "uploads/" . $image;
        if (file_exists($file_path)) {
            if (!unlink($file_path)) {
                echo "<script>alert('Failed to delete image from server.'); window.location.href='" . $_SERVER['PHP_SELF'] . "';</script>";
                exit();
            }
        }

        // Remove the image from the database record
        $sql = "SELECT gambar FROM borangbupadf WHERE id=?";
        $stmt = mysqli_prepare($conn, $sql);
        mysqli_stmt_bind_param($stmt, "i", $id);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_bind_result($stmt, $existing_gambar);
        mysqli_stmt_fetch($stmt);
        mysqli_stmt_close($stmt);

        $images = explode(',', $existing_gambar);
        if (($key = array_search($image, $images)) !== false) {
            unset($images[$key]);
        }
        $new_image_list = implode(',', array_filter($images)); // Remove any empty elements

        // Update the database with the new list of images
        $sql = "UPDATE borangbupadf SET gambar=? WHERE id=?";
        $stmt = mysqli_prepare($conn, $sql);
        mysqli_stmt_bind_param($stmt, "si", $new_image_list, $id);
        if (mysqli_stmt_execute($stmt)) {
            echo "<script>alert('Image deleted successfully!'); window.location.href='" . $_SERVER['PHP_SELF'] . "';</script>";
        } else {
            echo "<script>alert('Error deleting image: " . mysqli_error($conn) . "'); window.location.href='" . $_SERVER['PHP_SELF'] . "';</script>";
        }
        mysqli_stmt_close($stmt);
    }

    // Handle update request
    if (isset($_POST['update'])) {
        $id = mysqli_real_escape_string($conn, $_POST['id']);
        $tarikh = mysqli_real_escape_string($conn, $_POST['tarikh']);
        $hari = mysqli_real_escape_string($conn, $_POST['hari']);
        $lokasi = mysqli_real_escape_string($conn, $_POST['lokasi']);
        $tajuk = mysqli_real_escape_string($conn, $_POST['tajuk']);

        // Handle the new image uploads
        $uploaded_images = [];
        if (isset($_FILES['gambar']['name']) && is_array($_FILES['gambar']['name'])) {
            foreach ($_FILES['gambar']['name'] as $key => $file_name) {
                if ($_FILES['gambar']['error'][$key] == 0) {
                    $file_extension = pathinfo($file_name, PATHINFO_EXTENSION);
                    $base_name = pathinfo($file_name, PATHINFO_FILENAME);
                    $target_dir = "uploads/";

                    // Sanitize file name to prevent security issues
                    $base_name = preg_replace("/[^A-Z0-9._-]/i", "_", $base_name);
                    $file_extension = strtolower($file_extension);

                    // Validate file type
                    $allowed_extensions = ['jpg', 'jpeg', 'png', 'gif'];
                    if (!in_array($file_extension, $allowed_extensions)) {
                        echo "<script>alert('Invalid file type for image: " . htmlspecialchars($file_name) . "');</script>";
                        continue; // Skip this file
                    }

                    // Validate file size (e.g., max 5MB)
                    $max_file_size = 5 * 1024 * 1024; // 5MB
                    if ($_FILES['gambar']['size'][$key] > $max_file_size) {
                        echo "<script>alert('File size exceeds limit for image: " . htmlspecialchars($file_name) . "');</script>";
                        continue; // Skip this file
                    }

                    $target_file = $target_dir . $base_name . "_" . time() . "." . $file_extension;

                    // Ensure unique file names to prevent overwriting
                    $counter = 1;
                    while (file_exists($target_file)) {
                        $target_file = $target_dir . $base_name . '_' . $counter . '.' . $file_extension;
                        $counter++;
                    }

                    if (move_uploaded_file($_FILES["gambar"]["tmp_name"][$key], $target_file)) {
                        $uploaded_images[] = basename($target_file);
                    } else {
                        // Log the error and notify the user
                        error_log("Failed to upload image: " . $_FILES["gambar"]["name"][$key]);
                        echo "<script>alert('Failed to upload image: " . htmlspecialchars($file_name) . "');</script>";
                    }
                } else {
                    // Handle specific upload errors
                    $error_code = $_FILES['gambar']['error'][$key];
                    $error_message = "Unknown error.";
                    switch ($error_code) {
                        case UPLOAD_ERR_INI_SIZE:
                        case UPLOAD_ERR_FORM_SIZE:
                            $error_message = "File size exceeds the allowed limit.";
                            break;
                        case UPLOAD_ERR_PARTIAL:
                            $error_message = "File was only partially uploaded.";
                            break;
                        case UPLOAD_ERR_NO_FILE:
                            $error_message = "No file was uploaded.";
                            break;
                        case UPLOAD_ERR_NO_TMP_DIR:
                            $error_message = "Missing a temporary folder.";
                            break;
                        case UPLOAD_ERR_CANT_WRITE:
                            $error_message = "Failed to write file to disk.";
                            break;
                        case UPLOAD_ERR_EXTENSION:
                            $error_message = "File upload stopped by a PHP extension.";
                            break;
                    }
                    echo "<script>alert('Error uploading file: " . htmlspecialchars($file_name) . " - " . $error_message . "');</script>";
                }
            }
        }

        // Fetch existing images from the database
        $sql = "SELECT gambar FROM borangbupadf WHERE id=?";
        $stmt = mysqli_prepare($conn, $sql);
        mysqli_stmt_bind_param($stmt, "i", $id);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_bind_result($stmt, $existing_gambar);
        mysqli_stmt_fetch($stmt);
        mysqli_stmt_close($stmt);

        // Combine existing images with newly uploaded images
        $existing_images = explode(',', $existing_gambar);
        $all_images = array_filter(array_merge($existing_images, $uploaded_images)); // Remove any empty elements
        $new_image_list = implode(',', $all_images);

        // Update the database with new data and images
        $sql = "UPDATE borangbupadf SET tarikh=?, hari=?, lokasi=?, tajuk=?, gambar=? WHERE id=?";
        $stmt = mysqli_prepare($conn, $sql);
        mysqli_stmt_bind_param($stmt, "sssssi", $tarikh, $hari, $lokasi, $tajuk, $new_image_list, $id);
        if (mysqli_stmt_execute($stmt)) {
            echo "<script>alert('Record updated successfully!'); window.location.href='" . $_SERVER['PHP_SELF'] . "';</script>";
        } else {
            echo "<script>alert('Error updating record: " . mysqli_error($conn) . "'); window.location.href='" . $_SERVER['PHP_SELF'] . "';</script>";
        }

        mysqli_stmt_close($stmt);
    }

    // Handle delete record request
    if (isset($_POST['delete'])) {
        $id = mysqli_real_escape_string($conn, $_POST['id']);

        // First, fetch the images to delete them from the filesystem
        $sql = "SELECT gambar FROM borangbupadf WHERE id=?";
        $stmt = mysqli_prepare($conn, $sql);
        mysqli_stmt_bind_param($stmt, "i", $id);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_bind_result($stmt, $gambar);
        mysqli_stmt_fetch($stmt);
        mysqli_stmt_close($stmt);

        $images = explode(',', $gambar);
        foreach ($images as $image) {
            if (!empty($image)) {
                $file_path = "uploads/" . $image;
                if (file_exists($file_path)) {
                    if (!unlink($file_path)) {
                        echo "<script>alert('Failed to delete image: " . htmlspecialchars($image) . "'); window.location.href='" . $_SERVER['PHP_SELF'] . "';</script>";
                        exit();
                    }
                }
            }
        }

        // Delete the record from the database
        $sql = "DELETE FROM borangbupadf WHERE id=?";
        $stmt = mysqli_prepare($conn, $sql);
        mysqli_stmt_bind_param($stmt, "i", $id);
        if (mysqli_stmt_execute($stmt)) {
            echo "<script>alert('Record deleted successfully!'); window.location.href='" . $_SERVER['PHP_SELF'] . "';</script>";
        } else {
            echo "<script>alert('Error deleting record: " . mysqli_error($conn) . "'); window.location.href='" . $_SERVER['PHP_SELF'] . "';</script>";
        }
        mysqli_stmt_close($stmt);
    }
}

// Fetch records grouped by month in Malay
$sql = "SELECT id, tarikh, hari, lokasi, tajuk, gambar FROM borangbupadf ORDER BY tarikh ASC";
$result = mysqli_query($conn, $sql);
if (!$result) {
    die("Query failed: " . mysqli_error($conn));
}

$records = [];
while ($row = mysqli_fetch_assoc($result)) {
    $records[] = $row;
}

$monthNames = [
    'January' => 'Januari',
    'February' => 'Februari',
    'March' => 'Mac',
    'April' => 'April',
    'May' => 'Mei',
    'June' => 'Jun',
    'July' => 'Julai',
    'August' => 'Ogos',
    'September' => 'September',
    'October' => 'Oktober',
    'November' => 'November',
    'December' => 'Disember'
];

// Group records by month in Malay
$recordsByMonth = [];
foreach ($records as $row) {
    $month = date('F', strtotime($row['tarikh'])); // Extract the month part
    $year = date('Y', strtotime($row['tarikh'])); // Extract the year part

    // Convert month to Malay
    $monthInMalay = $monthNames[$month] ?? $month;

    // Combine Malay month and year
    $monthLabel = $monthInMalay . ' ' . $year;

    // Group the records by the Malay month and year
    $recordsByMonth[$monthLabel][] = $row;
}

mysqli_close($conn);
?>
<!DOCTYPE HTML>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LAPORAN BAHAGIAN UNIT PENGURUSAN ASET DAN FASILITI</title>
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

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .header {
            text-align: center;
            margin-bottom: 20px;
        }

        .header h1 {
            font-size: 1.2em;
            font-weight: bold;
            margin-bottom: 5px;
            margin-top: 10px;
        }

        .header p {
            margin: 5px 0;
            font-size: 1em;
        }

        .underline {
            text-decoration: underline;
            color: red;
        }

        .image-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 10px;
            justify-content: center;
            position: relative;
            page-break-after: always;
        }

        .image-grid img {
            width: 100%;
            height: 60%;
            border: 1px solid #ccc;
            border-radius: 4px;
            object-fit: cover;
        }

        .image-container2 {
            text-align: center;
            margin-bottom: 20px;
            page-break-after: auto;
        }

        .image-container2 img {
            max-width: 150px;
            height: auto;
        }

        @media screen and (max-width: 600px) {
            .image-grid img {
                max-width: 100%;
            }
        }

        input[type="button"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 5px;
        }

        button {
            background-color: #4CAF50;
            /* Green background */
            border: none;
            /* Remove borders */
            color: white;
            /* White text */
            padding: 2px 7px;
            /* Some padding */
            text-align: center;
            /* Center the text */
            text-decoration: none;
            /* Remove underline */
            display: inline-block;
            /* Make the button inline */
            font-size: 10px;
            /* Increase font size */
            margin: 4px 2px;
            /* Some margin around buttons */
            cursor: pointer;
            /* Add a pointer cursor on hover */
            border-radius: 5px;
            /* Rounded corners */
            transition: background-color 0.3s ease, transform 0.2s ease;
            /* Add transition effects */
        }

        /* Hover effects */
        button:hover {
            background-color: #45a049;
            /* Darker green on hover */
            transform: scale(1.05);
            /* Slightly enlarge the button on hover */
        }

        /* Specific styling for the Edit button */
        button[type="button"] {
            background-color: #008CBA;
            /* Blue background for Edit button */
        }

        button[type="button"]:hover {
            background-color: #007B9E;
            /* Darker blue on hover */
        }

        .delete-icon {
            position: absolute;
            top: 10px;
            right: 10px;
            background-color: red;
            color: white;
            font-weight: bold;
            border: none;
            cursor: pointer;
            border-radius: 50%;
            width: 25px;
            height: 25px;
            text-align: center;
            line-height: 25px;
            font-size: 14px;
        }

        @media print {
            .delete-icon,
            button[type="submit"],
            button[type="button"],
            .edit-form {
                display: none !important;
                /* Ensure these elements are not displayed during printing */
            }
        }

        .image-container {
            position: relative;
            display: inline-block;
            cursor: move;
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

        .img-preview-container {
            position: relative;
            display: inline-block;
            margin: 10px;
        }

        .img-preview-container img {
            display: block;
            width: 100px;
            height: auto;
        }

        .delete-image {
            position: absolute;
            top: 5px;
            right: 5px;
            background-color: rgba(255, 255, 255, 0.7);
            border: none;
            border-radius: 50%;
            cursor: pointer;
            font-size: 16px;
            width: 20px;
            height: 20px;
            text-align: center;
            line-height: 18px;
            color: #ff0000;
        }

        .preview-images {
            display: flex;
            flex-wrap: wrap;
            margin-top: 10px;
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
    </style>
    <script>
        let dataTransfer = new DataTransfer();

        function toggleEditForm(id) {
            var form = document.getElementById('editForm-' + id);
            if (form.style.display === 'none' || form.style.display === '') {
                form.style.display = 'block';
            } else {
                form.style.display = 'none';
            }
        }

        // Function to preview new images before upload with delete option
        function previewImages(input, id) {
            var previewContainer = document.getElementById('imagePreview-' + id);
            previewContainer.innerHTML = ''; // Clear existing previews
            dataTransfer = new DataTransfer(); // Reset DataTransfer

            if (input.files) {
                for (let i = 0; i < input.files.length; i++) {
                    let file = input.files[i];
                    dataTransfer.items.add(file); // Add file to DataTransfer

                    let reader = new FileReader();

                    reader.onload = function(e) {
                        // Create a container for the image and delete button
                        let imgContainer = document.createElement('div');
                        imgContainer.classList.add('img-preview-container');

                        // Create the image element
                        let img = document.createElement('img');
                        img.src = e.target.result;
                        img.style.maxWidth = '100px';
                        img.style.margin = '10px';

                        // Create the delete button
                        let deleteBtn = document.createElement('span');
                        deleteBtn.innerHTML = '&times;';
                        deleteBtn.classList.add('delete-image');
                        deleteBtn.setAttribute('data-index', i);
                        deleteBtn.onclick = function() {
                            removeImage(id, i);
                        };

                        // Append image and delete button to the container
                        imgContainer.appendChild(img);
                        imgContainer.appendChild(deleteBtn);
                        previewContainer.appendChild(imgContainer);
                    }

                    reader.readAsDataURL(file);
                }

                // Update the file input with the DataTransfer files
                input.files = dataTransfer.files;
            }
        }

        function removeImage(id, index) {
            // Remove the file from DataTransfer
            dataTransfer.items.remove(index);

            // Update the file input
            var fileInput = document.getElementById('fileInput-' + id);
            fileInput.files = dataTransfer.files;

            // Refresh the image previews
            previewImages(fileInput, id);
        }

        function setAction(action) {
            var form = document.getElementById('reportForm');
            form.action = action;
            form.submit();
        }

        let draggedElement = null;
        let draggedPosition = null;

        function dragStart(e) {
            draggedElement = e.target.closest('.image-container'); // The whole image container is being dragged
            draggedPosition = parseInt(draggedElement.dataset.position); // Save original position
            e.dataTransfer.effectAllowed = 'move'; // Allow moving the element
        }

        function dragOver(e) {
            e.preventDefault(); // Default action needs to be prevented to allow dropping
            e.dataTransfer.dropEffect = 'move';
        }

        function dropHandler(e, id) {
            e.preventDefault();
            const targetElement = e.target.closest('.image-container'); // Target where the image is dropped
            if (!targetElement) return; // If not dropped on another image, do nothing

            const targetPosition = parseInt(targetElement.dataset.position); // Get position of the drop target

            if (draggedElement !== targetElement) {
                // Swap dragged and target elements' positions in the DOM
                const imageGrid = document.getElementById(`imageGrid-${id}`);
                if (draggedPosition < targetPosition) {
                    imageGrid.insertBefore(draggedElement, targetElement.nextSibling);
                } else {
                    imageGrid.insertBefore(draggedElement, targetElement);
                }

                // Update the order after swapping
                updateImageOrder(id);
            }
        }

        function updateImageOrder(id) {
            const imageContainers = document.querySelectorAll(`#imageGrid-${id} .image-container`);
            const newOrder = [];

            // Loop through all images and get the new order
            imageContainers.forEach((container, index) => {
                newOrder.push(container.querySelector('img').src.split('/').pop()); // Get filename of the image
                container.dataset.position = index; // Update the data-position of each container
            });

            // Update hidden input with new order
            const imageOrderInput = document.querySelector(`#imageOrder-${id}`);
            imageOrderInput.value = newOrder.join(',');
        }

        // Event listeners for images
        document.addEventListener('DOMContentLoaded', function() {
            const imageContainers = document.querySelectorAll('.image-container');
            imageContainers.forEach(container => {
                container.addEventListener('dragstart', dragStart);
                container.addEventListener('dragover', dragOver);
                container.addEventListener('drop', function(e) {
                    const id = this.closest('.image-grid').id.split('-')[1];
                    dropHandler(e, id);
                });
            });

            // Handle click event on drop zones to trigger file input
            document.querySelectorAll('.drop-zone').forEach(dropZone => {
                dropZone.addEventListener('click', function() {
                    var inputId = this.getAttribute('id').split('-')[2]; // Extract the ID from drop zone
                    var fileInput = document.getElementById('fileInput-' + inputId);
                    fileInput.click(); // Trigger the file input click event
                });
            });
        });

        // Store the scroll position before page unload
        window.addEventListener("beforeunload", function () {
            localStorage.setItem("scrollPosition", window.scrollY);
        });

        // Restore the scroll position when the page reloads
        window.addEventListener("load", function () {
            let scrollPosition = localStorage.getItem("scrollPosition");
            if (scrollPosition) {
                window.scrollTo(0, scrollPosition);
                localStorage.removeItem("scrollPosition");
            }
        });

        // Handle drag over the drop zone
        function handleDragOver(event) {
            event.preventDefault(); // Prevent default behavior (file from being opened)
            event.target.classList.add('hover'); // Add hover effect
        }

        // Handle file drop into the drop zone (multiple files)
        function handleFileDrop(event, id) {
            event.preventDefault(); // Prevent default behavior
            event.target.classList.remove('hover'); // Remove hover effect

            var files = event.dataTransfer.files; // Get the dropped files
            var fileInput = document.getElementById('fileInput-' + id);

            // Update the file input with the dropped files
            updateFileList(fileInput, files);

            // Preview the dropped images
            previewImages(fileInput, id);
        }

        // Update the file input with multiple files
        function updateFileList(fileInput, files) {
            // Create a new DataTransfer object to hold multiple files
            dataTransfer = new DataTransfer();

            // Add existing files from the input (if any)
            for (var i = 0; i < fileInput.files.length; i++) {
                dataTransfer.items.add(fileInput.files[i]);
            }

            // Add the newly dropped files
            for (var i = 0; i < files.length; i++) {
                dataTransfer.items.add(files[i]);
            }

            // Update the file input with the combined file list
            fileInput.files = dataTransfer.files;
        }
    </script>
</head>

<body>
    <div class="container">
        <?php foreach ($recordsByMonth as $month => $records) { ?>
            <h2 style="text-align:center;">Laporan Bulan <?php echo htmlspecialchars($month); ?></h2>
            <?php foreach ($records as $row) { ?>
                <div class="header">
					<div class="image-container">
						<img src="<?php echo 'abmlogo.png'; ?>" alt="Logo ABM">
					</div>
                    <h1>AKADEMI BINAAN MALAYSIA WILAYAH TENGAH</h1>
                    <h1>BAHAGIAN UNIT PENGURUSAN ASET & FASILITI</h1>
                    <p><strong>Tarikh:</strong> <?php echo htmlspecialchars($row['tarikh']); ?></p>
                    <p><strong>Hari:</strong> <?php echo htmlspecialchars($row['hari']); ?></p>
                    <p><strong>Lokasi:</strong> <?php echo htmlspecialchars($row['lokasi']); ?></p>
                    <p><strong class="underline">Tajuk:</strong> <?php echo htmlspecialchars($row['tajuk']); ?></p>

                    <!-- Edit Button -->
                    <button type="button" class="edit-button" onclick="toggleEditForm(<?php echo $row['id']; ?>)">Edit</button>

                    <!-- Edit Form (Hidden by default) -->
                    <div id="editForm-<?php echo $row['id']; ?>" style="display: none;" class="edit-form">
                        <form method="POST" action="" enctype="multipart/form-data">
                            <input type="hidden" name="id" value="<?php echo htmlspecialchars($row['id']); ?>">
                            <label>Tarikh:
                                <input type="date" name="tarikh" value="<?php echo htmlspecialchars($row['tarikh']); ?>" required>
                            </label><br>
                            <label>Hari:
                                <input type="text" name="hari" value="<?php echo htmlspecialchars($row['hari']); ?>" required>
                            </label><br>
                            <label>Lokasi:
                                <input type="text" name="lokasi" value="<?php echo htmlspecialchars($row['lokasi']); ?>" required>
                            </label><br>
                            <label>Tajuk:
                                <input type="text" name="tajuk" value="<?php echo htmlspecialchars($row['tajuk']); ?>" required>
                            </label><br>
                            <label>Upload New Images: </label><br>
                            <!-- Drop Zone for Drag and Drop -->
                            <div class="drop-zone" id="drop-zone-<?php echo $row['id']; ?>" 
                                 ondragover="handleDragOver(event)" 
                                 ondrop="handleFileDrop(event, <?php echo $row['id']; ?>)">
                                <p>Drag and drop files here, or click to select files</p>
                                <input type="file" id="fileInput-<?php echo $row['id']; ?>" name="gambar[]" multiple style="display:none;" onchange="previewImages(this, <?php echo $row['id']; ?>);" />
                            </div>

                            <!-- Preview Images -->
                            <div id="imagePreview-<?php echo $row['id']; ?>" class="preview-images"></div>

                            <!-- Update and Delete Buttons -->
                            <button type="submit" name="update">Update</button>
                            <button type="submit" name="delete" onclick="return confirm('Are you sure you want to delete this record?');">Delete</button>
                        </form>
                    </div>

                    <!-- Display Images with Delete Option -->
                    <div id="imageGrid-<?php echo htmlspecialchars($row['id']); ?>" class="image-grid">
                        <?php 
                        $images = array_filter(explode(',', $row['gambar']));
                        foreach ($images as $index => $image): ?>
                            <div class="image-container" draggable="true" data-position="<?php echo $index; ?>" 
                                 ondragstart="dragStart(event)" ondragover="dragOver(event)" 
                                 ondrop="dropHandler(event, <?php echo htmlspecialchars($row['id']); ?>)">
                                <img src="uploads/<?php echo htmlspecialchars($image); ?>" 
                                     alt="Image" width="150" draggable="false">
                                <!-- Delete Image Form -->
                                <form method="POST" action="" style="position: absolute; top: 5px; right: 5px;">
                                    <input type="hidden" name="id" value="<?php echo htmlspecialchars($row['id']); ?>">
                                    <input type="hidden" name="image" value="<?php echo htmlspecialchars($image); ?>">
                                    <button type="submit" name="delete_image" class="delete-icon"
                                            onclick="return confirm('Are you sure you want to delete this image?');">X</button>
                                </form>
                            </div>
                        <?php endforeach; ?>
                        <input type="hidden" id="imageOrder-<?php echo htmlspecialchars($row['id']); ?>" name="image_order" value="<?php echo htmlspecialchars(implode(',', $images)); ?>">
                    </div>
                </div>
        <?php }
        }
        ?>

        <form id="reportForm" method="POST">
			<input type="button" value="ADD" onclick="setAction('BorangBUPADF.php');">
            <input type="button" value="PRINT" class="print-button" onclick="window.print();">
            <input type="button" value="KEMBALI" onclick="setAction('Admin_BUPADF.php');">
        </form>
    </div>
</body>

</html>
