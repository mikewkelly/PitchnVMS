<?php
/* @var $this ProjectController */
/* @var $model Project */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'project-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'organizationId'); ?>
		<?php echo $form->textField($model,'organizationId'); ?>
		<?php echo $form->error($model,'organizationId'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'causeId'); ?>
		<?php echo $form->textField($model,'causeId'); ?>
		<?php echo $form->error($model,'causeId'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'status'); ?>
		<?php echo $form->textField($model,'status',array('size'=>10,'maxlength'=>10)); ?>
		<?php echo $form->error($model,'status'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'startDate'); ?>
		<?php echo $form->textField($model,'startDate'); ?>
		<?php echo $form->error($model,'startDate'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'endDate'); ?>
		<?php echo $form->textField($model,'endDate'); ?>
		<?php echo $form->error($model,'endDate'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'actualEndDate'); ?>
		<?php echo $form->textField($model,'actualEndDate'); ?>
		<?php echo $form->error($model,'actualEndDate'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'projectDescription'); ?>
		<?php echo $form->textField($model,'projectDescription',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'projectDescription'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'city'); ?>
		<?php echo $form->textField($model,'city',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'city'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'province'); ?>
		<?php echo $form->textField($model,'province',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'province'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'recurring'); ?>
		<?php echo $form->textField($model,'recurring',array('size'=>20,'maxlength'=>20)); ?>
		<?php echo $form->error($model,'recurring'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'projectWebsite'); ?>
		<?php echo $form->textField($model,'projectWebsite',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'projectWebsite'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'projectName'); ?>
		<?php echo $form->textField($model,'projectName',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'projectName'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->