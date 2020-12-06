<?php
include("dbconnection.php");
 $user = $_POST['user'];

$output="";

if($user != "")
{
      $ret=mysqli_query($con,"select * from prequest where name like '%".$user."%' union select * from prequest where email like '%".$user."%' union select * from prequest where contactno like '%".$user."%' order by id desc");
      $cnt=1;
      while($row=mysqli_fetch_array($ret))
      {
            $output .= '<tr>';
            $output .= '<td class="v-align-middle">'.$cnt.'</td>';
            $output .= '<td class="v-align-middle">'.$row['name'].'</td>';
            $output .= '<td class="v-align-middle"><span class="muted">'.$row['email'].'</span></td>';
            $output .= '<td><span class="muted">'.$row['contactno'].'</span></td>';
            $output .= '<td class="v-align-middle">'.$row['wdd'];
            $output .= $row['cms'].$row['seo'].$row['smo'].$row['swd'].$row['dwd'].$row['fwd'].$row['dr'].$row['whs'].$row['wm'].$row['ed'].$row['wta'].$row['opi'].$row['ld'].$row['da'].$row['osc'].$row['nd'].$row['others'];
            $output .= '</td><td><a href="quote-details.php?id='.$row['id'].'"><button class="btn-danger-dark">View</button></a></td></tr>';
            $cnt=$cnt+1;

      }
}
else
{
      $ret=mysqli_query($con,"select * from prequest order by id desc limit 10");
      $cnt=1;
      while($row=mysqli_fetch_array($ret))
      {
            $output .= '<tr>';
            $output .= '<td class="v-align-middle">'.$cnt.'</td>';
            $output .= '<td class="v-align-middle">'.$row['name'].'</td>';
            $output .= '<td class="v-align-middle"><span class="muted">'.$row['email'].'</span></td>';
            $output .= '<td><span class="muted">'.$row['contactno'].'</span></td>';
            $output .= '<td class="v-align-middle">'.$row['wdd'];
            $output .= $row['cms'].$row['seo'].$row['smo'].$row['swd'].$row['dwd'].$row['fwd'].$row['dr'].$row['whs'].$row['wm'].$row['ed'].$row['wta'].$row['opi'].$row['ld'].$row['da'].$row['osc'].$row['nd'].$row['others'];
            $output .= '</td><td><a href="quote-details.php?id='.$row['id'].'"><button class="btn-danger-dark">View</button></a></td></tr>';
            $cnt=$cnt+1;

      }
}
      echo $output;
?>