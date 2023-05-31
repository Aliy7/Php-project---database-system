<?php
require_once 'config/db.php';


$currentorderid = 11;

if (isset($_POST["currentorderid"])) {
    $currentorderid = $_POST["currentorderid"];
}

$query = "SELECT orderid, name, email, address
from cust
Inner join orderpay on cust.custid = orderpay.custid
Where orderid = $currentorderid";
$result = mysqli_query($conn, $query);

$query2 = "SELECT totalpay, cardtype, cardnum, date
From orderpay
Where orderid = $currentorderid";
$result2 = mysqli_query($conn, $query2);

$thirdQuery = "SELECT item.iname, count(distinct item.iname) 
as count, item.unitprice, sum(item.unitprice * tran.quantity) as total
from tran, item
where tran.itemid = item.itemid and tran.orderid = $currentorderid
group by item.iname";
?>

<!DOCTYPE html>
<html lang="eng">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-compatible" content="IE=edge">
    <meta name="viewport" content+="width=device-width, initial-scale=1.0">
    <title>Iceland receipt </title>
    <link rel="stylesheet" type="text/css" href="iceland.css"/>
</head>

<body style="none">
    <hr size="2" width="99%" color="black">
    <div class="logo">
        <img src="images/iceland.png" alt="logo" />
    </div>
    <div class=header>
        <h1>Order Acknowledgement</h2>
    </div>
    <div class="vl"></div>
    <div class="v2"> </div>
    <hr size="2" width="99%" color="black">
    </header>
    </div>
    <div class="row">
        <div class="column">
            <table>
                <tr>
                    <th>
                        Delivery details:
                    </th>
                </tr>

                <?php
                while ($row = mysqli_fetch_assoc($result)) {
                ?>
                <tr>
                    <td>Order#: </td>
                    <td>
                        <?php
                    echo $row['orderid'];
                        ?>
                    </td>
                </tr>
                <tr>
                    <td>Name: </td>
                    <td>
                        <?php echo $row['name']; ?>
                    </td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td>
                        <?php echo $row['email']; ?>
                    </td>
                </tr>
                <tr>
                    <td>Address: </td>
                    <td>
                        <?php echo $row['address']; ?>
                    </td>
                </tr>

                <?php
                }
                ?>

            </table>
        </div>
        <table>
            <tr>
                <th>
                    Payment details:
                </th>

            </tr>

            <tr>

                <?php
                while ($row = mysqli_fetch_assoc($result2)) {
                ?>
            <tr>
                <td>Total: </td>
                <td>
                    <?php echo $row['totalpay']; ?>
                </td>
            </tr>
            <tr>
                <td>Method: </td>
                <td>
                    <?php echo $row['cardtype']; ?>
                </td>
            </tr>
            <tr>
                <td>Card: </td>
                <td>
                    <?php echo $row['cardnum']; ?>
                </td>
            </tr>
            <tr>
                <td>Date: </td>
                <td>
                    <?php echo $row['date']; ?>
                </td>
            </tr>

            </tr>
            <?php
                }
                ?>

        </table>
    </div>
    <hr size="2" width="99%" color="black">
    <br>
    <th class="Orderheader">
        <tr>
            <td><b>Order details</b></td>
        </tr>
        </br>
        <?Php
        $query = "SELECT item.iname, count(distinct item.iname) as count, item.unitprice, sum(item.unitprice * tran.quantity) as total, item.cat
from tran, item
where tran.itemid = item.itemid and tran.orderid = $currentorderid
group by item.cat, item.iname";
        ?>
        <table className="padding-table-columns">
            <tr>
                <td>Product details</td>
                <td>Ordered</td>
                <td>Price</td>
                <td>Total</td>
            </tr>
            <?Php
            if ($result_set = mysqli_query($conn, $query)) {
                $currentcat = "None";
                while ($row = mysqli_fetch_assoc($result_set)) {
                    if ($row["cat"] != $currentcat) {
                        $currentcat = $row["cat"];
                        echo "<tr><td colspan='4'><b>" . $row["cat"] . "</b></td></tr>";
                    }
                    echo "<tr>";
                    echo "<td>" . $row["iname"] . "</td>";
                    echo "<td>" . $row["count"] . "</td>";
                    echo "<td> £ " . $row["unitprice"] . "</td>";
                    echo "<td> £ " . $row["total"] . "</td>";
                    echo "</tr>";
                }
                mysqli_free_result($result_set);

            }

            ?>

            <tr>
                <td><b>Grand Total</b></td>

                <?php
                $query = "SELECT sum(item.unitprice * tran.quantity) as total, sum(tran.quantity) as count
            from tran, item
            where tran.itemid = item.itemid and tran.orderid = $currentorderid";
                $result = mysqli_query($conn, $query);
                $row = mysqli_fetch_assoc($result);
                echo "<td>" . $row["count"] . "</td>";
                echo "<td></td>";
                echo "<td><b> £ " . $row["total"] . "</b></td>";
                ?>
                <?php
                $query = "SELECT paid - total as refund
            from (SELECT totalpay as paid from orderpay where orderid = $currentorderid) as paid , (SELECT sum(item.unitprice * tran.quantity) as total
            from tran, item
            where tran.itemid = item.itemid and tran.orderid = $currentorderid) as total";
                ?>

                <?php
                $result = mysqli_query($conn, $query);
                $row = mysqli_fetch_assoc($result);
                if ($row["refund"] < 0) {
                    echo "<tr><td><b>Discount</b></td><td></td><td></td><td><b> £ " . $row["refund"] * -1 . "</b></td></tr>";
                } else if ($row["refund"] > 0) {
                    echo "<tr><td><b>Refund</b></td><td></td><td></td><td><b> £ " . $row["refund"] . "</b></td></tr>";
                }
                ?>
            </tr>
        </table>
        </br>
        </br>
        </tr>
        </tr>
        </table>
        <div>
            <p style="text-align:center; background-color: #DDDDDD; height:80px; width: 60x">
                +Lines are open Monday to Saturday 6am-10pm and Sunday 8am-10pm.</p>
        </div>

        <div class="parent">
<div>
<img src="images/paypal.png"  alt="paypallogo" class="center">
</div>
<div>
<img src="images/mastervisa.png" alt="mastervisa" class="center">
</div>
</div>
<div>

</br>
<table>
                <tr>
                    <td>
                        <form action="index.php" method="post">
                            <label for="currentorderid">Query Order #: </label>
                            <input type="text" name="currentorderid" placeholder="Order ID">
                            <input type="submit" name="submit" value="Query Order">
                        </form>
                    </td>
                    </table>
<hr size="2" width="99%" color="black">
                </div>
             </div>
        </div>
     </div>
</body>
</html>


