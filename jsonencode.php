<?php
require('./config.php');
$file = './face_recognition/input.txt';
clearstatcache(true, $file);
$temp = trim(file_get_contents($file));
if(($temp != "blah" && $temp != "None")){
  $sql = "SELECT * FROM `users` WHERE `roll_no` = '$temp';";
  $rs = mysqli_query($connection,$sql);
  while($row = mysqli_fetch_assoc($rs)){
    $data['name'] = $row['name'];
    $cafe = $row['cafeteria'];
    $branch = $row['branch'];
  }
  //menu
  $data['menu'] = "<ul id=menu>";
  $menusql = "SELECT * FROM `$cafe`";
  $menurs = mysqli_query($connection,$menusql);
  while($row = mysqli_fetch_assoc($menurs)){
    $data['menu'] = $data['menu']."<li>".$row['item']."</li>";
  }
  $data['menu'].="</ul>";
  //timetable
  $data['timetable'] = "<table id=timetable><tr><th>Time</th><th>Class</th></tr>";
  $ttsql = "SELECT * FROM `$branch` WHERE day = 1;";
  $ttrs = mysqli_query($connection,$ttsql);
  while($row = mysqli_fetch_assoc($ttrs)){
    $data['timetable'] = $data['timetable']."<tr><td>".$row['time']."</td><td>".$row['class']."</td></tr>";
  }
  $data['timetable'] .= "</table>";
  $data['status'] = true;
}else{
  $data['status'] = false;
}
echo json_encode($data);
