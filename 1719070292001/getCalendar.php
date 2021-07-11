<?php
session_start();
require_once('Conexion/conexion_pdo.php');


$statement = $pdo->prepare("select distinct ag.vence,
(select count(c.id_actividad) from agenda_actividad c where c.id_actividad=ag.id_actividad and c.vence=ag.vence) as numero,
a.actividad
from agenda_actividad ag,actividad a
where ag.id_actividad=a.id_actividad");

$select = "select distinct ag.vence as start,
(select count(c.id_actividad) from agenda_actividad c where c.id_actividad=ag.id_actividad and c.vence=ag.vence and c.estado='PENDIENTE') as numero,
concat('(',(select count(c.id_actividad) from agenda_actividad c where c.id_actividad=ag.id_actividad and c.vence=ag.vence and c.estado='PENDIENTE'),')',' ',a.actividad) as title,
if(ag.vence<curdate(),'red',if(ag.vence=curdate(),'green',if(ag.vence>curdate(),'blue','brown'))) as color,
concat('actividades.php?actividad=',a.actividad,'&fecha=',ag.vence) as url
from agenda_actividad ag,actividad a
where ag.id_actividad=a.id_actividad and ag.estado='PENDIENTE'";
$stmt = $pdo->query($select);
$events = $stmt->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($events);

?>