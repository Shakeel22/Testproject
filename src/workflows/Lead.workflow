<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Sales</fullName>
        <ccEmails>shakeel22mohammad@gmail.com</ccEmails>
        <description>Sales New Lead Notification Email Alert</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>shakeel22mohammad@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SalesNewCustomerEmail</template>
    </alerts>
    <alerts>
        <fullName>Sales_New_Lead_Notification_Email_Alert</fullName>
        <description>Sales New Lead Notification Email Alert</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>shakeel22mohammad@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SalesNewCustomerEmail</template>
    </alerts>
    <rules>
        <fullName>Notification Of Lead</fullName>
        <active>false</active>
        <formula>True</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>sales new lead</fullName>
        <actions>
            <name>Sales_New_Lead_Notification_Email_Alert</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>True</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
