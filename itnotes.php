
<?php 
				include('connect.php');
 ?>

<!DOCTYPE html>
<html>
<head>
	<title>ITnotes</title>

	<style type="text/css">

	body{
		background-color: #ddd;
	}

	.box{
			
			padding: 10px;
			
			
			

		}
		
	.content {

				margin-left: 20px;
			
			width: 75%;
			float: left;
			min-height: 500px;
			overflow: hidden;
			padding: 8px 12px;
			background: #fff;
			box-shadow: 0px 0px 10px -1px rgba(0,0,0,255);



	}


	


	.content p {

			font-size: 18px;
			color: blue;
			font-family: serif;
			font-weight: 500;
			z-index: 1;
	}

			.maincontent{
				
				margin: 2px;
				
				display: none;
				
				
  				transition-duration: 5s;
  				transition-delay: 2s;
				transition-duration: 5s;
				transition: 2s;


			}

			.topics{
			float: left;
			width: 200px;
			height: 100%;
			background: #fff;
			border: 1px solid #ddd;
			box-shadow: 0px 0px 10px -1px rgba(20,0,0,255);
			text-align: auto;
			padding: 5px 4px;
		}


			.topics p{
				color: red;
				cursor: pointer;
			}




	</style>

</head>
<body>
		<div><center><h1>The IT Topics</h1></center></div>
	<div class="box">

		<div class="topics"> 

				<?php


				$sql2 = 'select *from itnotes; ';

				$result2 = mysqli_query($connect,$sql2);


				$resultCheck2 = mysqli_num_rows($result2);


							if($resultCheck2>0)

							{	
								$i=0;
								while($row2 = mysqli_fetch_assoc($result2)) {

									
									echo "<div>";

									echo "<p onclick='unhide(".$i.")'>";
									echo $i+1;
									echo ".";
									echo $row2['TopicName'];
									echo "</p>";

									echo "</div>";

									++$i;
								}

							}

				?>
				


		</div>

				

				<div class="content">
					
							<?php


							$sql = 'select *from itnotes; ';


							$result = mysqli_query($connect,$sql);


							$resultCheck = mysqli_num_rows($result);


							if($resultCheck>0)

							{	
								while($row = mysqli_fetch_assoc($result)) {
									
									echo "<div class='maincontent'>";
									echo "<h2>";

									echo $row['TopicName'];
									echo "</h2>";



									
									
									echo "<p>";
									echo $row['Defination'];

									echo "</p>";

									echo "</div>";






								}



							}

							?>


				</div>

			</div>

				<script type="text/javascript">
					


				 var x = 	document.getElementsByClassName('maincontent');

				 x[0].style.display='block';

					function unhide(y) {
							
						for (var i = 0; i < x.length; i++) {
							
							x[i].style.left='-1000px'
							
							x[i].style.display='none';

						}

						


						x[y].style.display= 'block';

						
						
						setTimeout(addvalue(), 1000 );



						function addvalue(){
						x[y].style.left='0px';
						}
					}


				</script>





</body>
</html>