<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Opportunity_Stage_Closed_Way</fullName>
        <description>Opportunity Stage Closed Way</description>
        <protected>false</protected>
        <recipients>
            <recipient>causar@swhizz.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SalesNewCustomerEmail</template>
    </alerts>
    <fieldUpdates>
        <fullName>Final_Action_Status</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Final Action Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Recall_Action</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Recall</literalValue>
        <name>Recall Action</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Rejection_Action</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Rejection Action</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Submission_Action_Initial</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Submitted</literalValue>
        <name>Submission Action Initial</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Notification For Closing Date</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Account.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <offsetFromField>Opportunity.CloseDate</offsetFromField>
            <timeLength>-7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Order1</fullName>
        <actions>
            <name>Order_Created</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <tasks>
        <fullName>Opportunity_Created</fullName>
        <assignedTo>causar@swhizz.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>7</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Opportunity.CreatedDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Opportunity Created</subject>
    </tasks>
    <tasks>
        <fullName>Order_Created</fullName>
        <assignedTo>causar@swhizz.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Account.CreatedDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>Order Created</subject>
    </tasks>
</Workflow>
