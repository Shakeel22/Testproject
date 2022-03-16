<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <outboundMessages>
        <fullName>Dealers_Outbound_Message</fullName>
        <apiVersion>53.0</apiVersion>
        <endpointUrl>https://hookb.in/LgQ37OyawMh18Vqq8OPY</endpointUrl>
        <fields>AccountNumber</fields>
        <fields>Id</fields>
        <fields>Industry</fields>
        <fields>Name</fields>
        <fields>Phone</fields>
        <fields>Rating</fields>
        <fields>Website</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>causar@swhizz.com</integrationUser>
        <name>Dealers Outbound Message</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>integration</fullName>
        <actions>
            <name>Dealers_Outbound_Message</name>
            <type>OutboundMessage</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.RecordTypeId</field>
            <operation>equals</operation>
            <value>Dealers</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
