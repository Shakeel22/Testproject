<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Final_Approval_Action</fullName>
        <field>Status__c</field>
        <literalValue>Final Selected-Offer Released</literalValue>
        <name>Final Approval Action</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Final_Rejection</fullName>
        <field>Status__c</field>
        <literalValue>Final Rejected</literalValue>
        <name>Final Rejection</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Hr_Action</fullName>
        <field>Status__c</field>
        <literalValue>HR Round Selected</literalValue>
        <name>Hr Action</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>L1_Selected_Action</fullName>
        <field>Status__c</field>
        <literalValue>L1 Round Selected</literalValue>
        <name>L1 Selected Action</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>initial_submission_Of_Candidate</fullName>
        <field>Status__c</field>
        <literalValue>Participated</literalValue>
        <name>initial submission Of Candidate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Out Bound Messages</fullName>
        <active>false</active>
        <criteriaItems>
            <field>CustomObject1__c.Skill_Set__c</field>
            <operation>equals</operation>
            <value>Salesforce</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
