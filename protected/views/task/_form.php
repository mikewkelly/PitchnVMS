<?php
/* @var $this TaskController */
/* @var $model Task */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'task-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'roleId'); ?>
		<?php echo $form->textField($model,'roleId'); ?>
		<?php echo $form->error($model,'roleId'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'taskName'); ?>
		<?php echo $form->textField($model,'taskName',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'taskName'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'status'); ?>
		<?php echo $form->textField($model,'status',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'status'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'timeSpent'); ?>
		<?php echo $form->textField($model,'timeSpent'); ?>
		<?php echo $form->error($model,'timeSpent'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'estCompTime'); ?>
		<?php echo $form->textField($model,'estCompTime'); ?>
		<?php echo $form->error($model,'estCompTime'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'taskDescription'); ?>
		<?php echo $form->textField($model,'taskDescription',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'taskDescription'); ?>
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

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->