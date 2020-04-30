<?php
	//Info about sender and messages
	$sender = $_GET['sender'];
	$msg = $_GET['msg'];
	$receiver = $_GET['receiver'];
	$rectime = $_GET['recvtime'];
	$type = $_GET['msgtype'];
	$gsm = $_GET['gsmsms'];
	$name = $_GET['name'];
	
	//connect to database
	$host ='localhost';
	$user ='root';
	$pass='';
	$db='remedydb';
	
	$con= mysqli_connect($host,$user,$pass,$db);
	if ($con){
		echo 'connected';
	}
	
	//break msg into array
	$parts = explode(' ', $msg);
	
	//register user in DB
	if ($parts[0] =='R'){
		//verify if user has entered their details
		if ((empty($parts[1]))&&(empty($parts[2]))){
			$responsemsg="Please enter your details for registration";
		}
		else if (strlen($parts[2])==4){
			//verify if username exists in database
			$verify = "SELECT User_Name FROM user WHERE User_Name ='$parts[1]'";
			$result = mysqli_query($con, $verify);
			if (mysqli_num_rows($result) > 0) {
				$responsemsg="Register again, with another username";
			}	 
			else {
				//add new user
				$newuser="insert into user(User_Name, User_Code, Status) values ('$parts[1]' , '$parts[2]','Offline')";
				$insert = mysqli_query($con,$newuser);
				//user has been added
				if ($insert){
					$updatestatus = "UPDATE user set Status='Online' WHERE User_Name= '$parts[1]'";
					$update=mysqli_query($con,$updatestatus);
					$responsemsg="Welcome to Be your Own doctor Sms app! <br/> Send H to have the list of health problem! <br/> Send Review followed by your comments to rate the sms application! <br/> Send New to add new remedies! <br/> Send Off followed by username to log out";
				}
				else{
					$responsemsg ="Please try again!";
				}	
			}
		}
		else{
			$responsemsg="Your Pin Code should be of 4 digits! Try Again";
		}
	}
	
	//Log in
	if ($parts[0] == 'L'){
		//verify username and password
		$verify = "SELECT User_Name FROM user WHERE User_Name ='$parts[1]' AND User_Code='$parts[2]'";
		$result = mysqli_query($con, $verify);
		if (mysqli_num_rows($result) > 0){
			$updatestatus = "UPDATE user set Status='Online' WHERE User_Name= '$parts[1]'";
			$update=mysqli_query($con,$updatestatus);
			$responsemsg="Welcome to Be your Own doctor Sms app! <br/> Send H to have the list of health problem! <br/> Send Review followed by your comments to rate the sms application! <br/> Send New to add new remedies! <br/>Send NLocate to add a new location for remedy! <br/> Send Off followed by username to log out";
		}
		else{
			$responsemsg="Login fail! Please try again";
		}
	}
	
	//if user is online.
	$isonline = "Select User_Name from user where Status='Online'";
	$check=mysqli_query($con, $isonline);
	if (mysqli_num_rows($check)>0){ //YES USER IS ONLINE
		
		//DISPLAY DISEASE LIST
		if ($parts[0] == 'H'){
			$sql = "SELECT * FROM disease";
			$result = mysqli_query($con, $sql);
			if (mysqli_num_rows($result) > 0) {
				$yourarray = array();
				$x=0;
				$responsemsg="found";
				while($row = mysqli_fetch_assoc($result)) {
					$yourarray[$x]=$row['Disease_ID'] . ' ' . $row['Disease_Name'] . ' ' . $row['Disease_Description'];	
					$responsemsg ="<br/>". ' ' .implode("<br/>",$yourarray). ' '."<br/>Send Remedy followed by the disease number";	
					$x=$x+1;
				}
			} 
		}
		
		//DISPLAY REMEDY LIST
		if ($parts[0] == 'Remedy'){
			$sql = "SELECT * FROM remedies WHERE Disease_ID='$parts[1]'";
			$result = mysqli_query($con, $sql);
			if (mysqli_num_rows($result) > 0) {
				$yourarray = array();
				$x=0;
				$responsemsg="found";
				while($row = mysqli_fetch_assoc($result)) {
					$yourarray[$x]=$row['Remedy_ID'] . ' ' . $row['Remedy'] . ' ' ."<br/>". ' ' ."  Instruction: ". ' ' . $row['Instruction'];	
					$responsemsg ="<br/>". ' ' .implode("<br/>",$yourarray). ' '."<br/>To rate any remedy individually from 1 to 5 Send Rate followed by remedy number and rating! <br/> Send View followed by remedy number to view its ratings! <br/> Send Locate followed by remedy number if you wish to know where to get the remedies!";			
					$x=$x+1;
				}
			} 
			else {
				$responsemsg= "Error! This Disease ID do not exist.";
			}
		}
		
		//RATE REMEDY AND UPDATE RATINGS
		if ($parts[0]=='Rate'){
			if (($parts[2]>0)&&($parts[2]<6)){
				$check = "SELECT Remedy_ID FROM remedies WHERE Remedy_ID='$parts[1]'";
				$show = mysqli_query($con, $check);
				if (mysqli_num_rows($show) > 0) {
					//select which user is online
					$online="SELECT User_ID From user WHERE Status='Online'";
					$onlineuser=mysqli_query($con,$online);
					if (mysqli_num_rows($onlineuser) > 0){
						while($row = mysqli_fetch_assoc($onlineuser)) {
							$username= $row["User_ID"];
						}
						//check if user has already rate this remedy 
						$remedyuser = "SELECT * FROM ratings WHERE Remedy_ID='$parts[1]' AND User_ID='$username'";
						$test = mysqli_query($con,$remedyuser);
						if (mysqli_num_rows($test) > 0){
							while($row = mysqli_fetch_assoc($test)) {
								$ratingid= $row["Rating_ID"];
							}
							$updaterate = "UPDATE ratings set Rate='$parts[2]' WHERE Rating_ID= '$ratingid'";
							$update=mysqli_query($con,$updaterate);
							$responsemsg="Thank you for updating your ratings!";
						}
						else{
							$add = "INSERT INTO ratings (Rate, Remedy_ID,User_ID) VALUES('$parts[2]' , '$parts[1]', '$username')";
							$output = mysqli_query($con,$add);
							if ($output){
								$responsemsg="Thank you for your ratings!";
							}
							else{
								$responsemsg="Rating has not been added!";
							}
						}
				}	
				else{
					$responsemsg="Remedy ID entered is invalid!";
				}
			}
			else{
				$responsemsg="Ratings should be between 0 and 5. Try Again!";
			}
			}	
		}
	
		
		//VIEW RATINGS
		if ($parts[0] == 'View'){
			$check = "SELECT Remedy_ID FROM remedies WHERE Remedy_ID='$parts[1]'";
			$show = mysqli_query($con, $check);
			if (mysqli_num_rows($show) > 0) {
				//select avg of ratings
				$view = "SELECT Remedy_ID, AVG(Rate)AS Rate FROM ratings WHERE Remedy_ID = '$parts[1]'";
				$output = mysqli_query($con,$view);
				if (mysqli_num_rows($output)>0){
					while($row = mysqli_fetch_assoc($output)) {
							$responsemsg= $row["Rate"]. ' ' ."is the average ratings";
						}
					}
				else{
					$responsemsg="This remedy has not yet been rated	!";
				}
			}
			else{
				$responsemsg="The Remedy ID is invalid";
			}
		}
		
		//FIND REMEDY LOCATION
		if ($parts[0]== 'Locate'){
			$check = "SELECT Remedy_ID FROM remedies WHERE Remedy_ID='$parts[1]'";
			$show = mysqli_query($con, $check);
			if (mysqli_num_rows($show)>0){
				//find address
				$find="SELECT Address from location WHERE Remedy_ID='$parts[1]'";
				$findit = mysqli_query($con,$find);
				if (mysqli_num_rows($findit)>0){
					$yourlocation = array();
					$x=0;
					while($row = mysqli_fetch_assoc($findit)){
						$yourlocation[$x]=$row['Address'];
						$responsemsg="The remedy can be found at". ' ' .implode(", ",$yourlocation);
						$x=$x+1;
					}
				}
				else{
					$responsemsg="Sorry, No Address could be found for this remedy";
				}
			}
			else{
				$responsemsg="The Remedy ID is invalid";
			}
		}
		//ADD REMEDY LOCATION
		if ($parts[0]=='NLocate'){
			$responsemsg="Send L followed by remedy number and the address";
		}
		if ($parts[0]=='L'){
			//break into array with limit
			$loc=explode(' ', $msg,3 );
			$locate =$loc[2];
			$check = "SELECT Remedy_ID FROM remedies WHERE Remedy_ID='$parts[1]'";
			$show = mysqli_query($con, $check);
			if (mysqli_num_rows($show)>0){
				$newremedy = "insert into location(Address, Remedy_ID) values ('$locate', '$parts[1]')";
				$insert = mysqli_query($con,$newremedy);
				if ($insert){
					$responsemsg="New Location has been added!";
				}
				else{
					$responsemsg="Error! Please try again";
				}
			}
			else{
				$responsemsg="The Remedy ID is invalid";
			}
		}
		
		//USER ADD NEW REMEDY
		if ($parts[0] == 'New'){
			$responsemsg="Send N followed by Disease id, new remedy name and Instruction";
		}
		if ($parts[0]=='N'){
			//break into array with limit
			$ins=explode(' ', $msg,4 );
			$instruction =$ins[3];
			$verify = "SELECT Disease_ID FROM disease WHERE Disease_ID ='$parts[1]'";
			$result = mysqli_query($con, $verify);
			if (mysqli_num_rows($result) > 0) {
				//select which user is online
				$online="SELECT User_ID From user WHERE Status='Online'";
				$onlineuser=mysqli_query($con,$online);
				if (mysqli_num_rows($onlineuser) > 0){
					while($row = mysqli_fetch_assoc($onlineuser)) {
						$username= $row["User_ID"];
					}
					//add new remedy
					$newremedy = "insert into remedies(Remedy, Instruction, Disease_ID, User_ID) values ('$parts[2]', '$instruction', '$parts[1]', '$username')";
					$insert = mysqli_query($con,$newremedy);
					if ($insert){
						$responsemsg="New Remedy has been added!";
					}
					else{
						$responsemsg="Error! Please try again";
					}
				}
			}
			else {
				$responsemsg="The Disease ID entered is invalid! <br/> Try Again!";
			}
		}
		
		//REVIEW SMS APPLICATION
		if ($parts[0]=='Review'){
			$rev=explode(' ', $msg,2 );
			$rr =$rev[1];
			$online="SELECT User_ID From user WHERE Status='Online'";
			$onlineuser=mysqli_query($con,$online);
			if (mysqli_num_rows($onlineuser) > 0){
				while($row = mysqli_fetch_assoc($onlineuser)) {
					$username= $row["User_ID"];
				}
				$reviewapp = "SELECT User_ID FROM review WHERE User_ID='$username'";
				$verify = mysqli_query($con, $reviewapp);
				if (mysqli_num_rows($verify)>0){
					$updatereview = "UPDATE review set Comments='$rr' WHERE User_ID= '$username'";
					$update=mysqli_query($con,$updatereview);
					$responsemsg="Thank you for updating your review!";
				}
				else{
					$review = "insert into review(Comments, User_ID) values ('$rr','$username')";
					$insert = mysqli_query($con,$review);
					if ($insert){
						$responsemsg="Thank you for your feedback!";
					}
					else{
						$responsemsg="Feedback fail! Try again later";
					}
				}
			}
		}
		
		//LOG OUT
		if ($parts[0]=='Off'){
			$verify = "SELECT User_Name FROM user WHERE User_Name = '$parts[1]'";
			$result = mysqli_query($con,$verify);
			if (mysqli_num_rows($result)> 0){
				$updatestatus = "UPDATE user set Status='Offline' WHERE User_Name= '$parts[1]'";
				$update=mysqli_query($con,$updatestatus);
				$responsemsg="Thank you for using our sms application!";
			}
			else{
				$responsemsg="Logout fail! Please try again";
			}
		}
		
	//END OF USER ONLINE	
	}
	else{
		$responsemsg="Send L Username Pin Code for Login". ' ' ."<br/>". ' ' ."Send R Username Pin Code for Registration";
	}
	//responseURL
	$responseURL ="http://localhost:9333/ozeki?login=admin&password=abc123&action=sendMessage&&messagetype=SMS:TEXT&recepient=$sender&messageData=$responsemsg";
	header("location:$responseURL");
?>