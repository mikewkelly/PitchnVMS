<?php
/* @var $this VolunteerNoteController */
/* @var $model VolunteerNote */

$this->breadcrumbs=array(
	'Volunteer Notes'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List VolunteerNote', 'url'=>array('index')),
	array('label'=>'Manage VolunteerNote', 'url'=>array('admin')),
);
?>

<h1>Create VolunteerNote</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>