<?php

/**
 * This is the model class for table "pvms.Person".
 *
 * The followings are the available columns in table 'pvms.Person':
 * @property integer $id
 * @property string $email
 * @property integer $causeId
 * @property integer $skillId
 * @property string $name
 * @property string $phone
 * @property string $workPhone
 * @property string $password
 * @property integer $permissionLevel
 * @property string $userType
 * @property string $birthdate
 * @property string $locationCity
 * @property string $locationProvince
 * @property string $locationCountry
 * @property string $language
 * @property string $description
 * @property string $registered
 * @property string $lastActive
 * @property string $active
 * @property string $status
 *
 * The followings are the available model relations:
 * @property FreeTime[] $freeTimes
 * @property Message[] $messages
 * @property OrgContact[] $orgContacts
 * @property PComments[] $pComments
 * @property Cause $cause
 * @property TComments[] $tComments
 * @property VolunteerNote[] $volunteerNotes
 * @property VolunteerNote[] $volunteerNotes1
 * @property WorksFor[] $worksFors
 */
class Person extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'pvms.Person';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('email, causeId, skillId, name, password, userType, registered, lastActive, active, status', 'required'),
			array('causeId, skillId, permissionLevel', 'numerical', 'integerOnly'=>true),
			array('email, name, locationCity, locationCountry, language, description', 'length', 'max'=>255),
			array('phone, workPhone, password', 'length', 'max'=>30),
			array('userType', 'length', 'max'=>13),
			array('locationProvince', 'length', 'max'=>2),
			array('registered, active', 'length', 'max'=>1),
			array('status', 'length', 'max'=>12),
			array('birthdate', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, email, causeId, skillId, name, phone, workPhone, password, permissionLevel, userType, birthdate, locationCity, locationProvince, locationCountry, language, description, registered, lastActive, active, status', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'freeTimes' => array(self::HAS_MANY, 'FreeTime', 'email'),
			'messages' => array(self::HAS_MANY, 'Message', 'email'),
			'orgContacts' => array(self::HAS_MANY, 'OrgContact', 'email'),
			'pComments' => array(self::HAS_MANY, 'PComments', 'email'),
			'cause' => array(self::BELONGS_TO, 'Cause', 'causeId'),
			'tComments' => array(self::HAS_MANY, 'TComments', 'email'),
			'volunteerNotes' => array(self::HAS_MANY, 'VolunteerNote', 'volunteerEmail'),
			'volunteerNotes1' => array(self::HAS_MANY, 'VolunteerNote', 'organizerEmail'),
			'worksFors' => array(self::HAS_MANY, 'WorksFor', 'email'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'email' => 'Email',
			'causeId' => 'Cause',
			'skillId' => 'Skill',
			'name' => 'Name',
			'phone' => 'Phone',
			'workPhone' => 'Work Phone',
			'password' => 'Password',
			'permissionLevel' => 'Permission Level',
			'userType' => 'User Type',
			'birthdate' => 'Birthdate',
			'locationCity' => 'Location City',
			'locationProvince' => 'Location Province',
			'locationCountry' => 'Location Country',
			'language' => 'Language',
			'description' => 'Description',
			'registered' => 'Registered',
			'lastActive' => 'Last Active',
			'active' => 'Active',
			'status' => 'Status',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('email',$this->email,true);
		$criteria->compare('causeId',$this->causeId);
		$criteria->compare('skillId',$this->skillId);
		$criteria->compare('name',$this->name,true);
		$criteria->compare('phone',$this->phone,true);
		$criteria->compare('workPhone',$this->workPhone,true);
		$criteria->compare('password',$this->password,true);
		$criteria->compare('permissionLevel',$this->permissionLevel);
		$criteria->compare('userType',$this->userType,true);
		$criteria->compare('birthdate',$this->birthdate,true);
		$criteria->compare('locationCity',$this->locationCity,true);
		$criteria->compare('locationProvince',$this->locationProvince,true);
		$criteria->compare('locationCountry',$this->locationCountry,true);
		$criteria->compare('language',$this->language,true);
		$criteria->compare('description',$this->description,true);
		$criteria->compare('registered',$this->registered,true);
		$criteria->compare('lastActive',$this->lastActive,true);
		$criteria->compare('active',$this->active,true);
		$criteria->compare('status',$this->status,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Person the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
