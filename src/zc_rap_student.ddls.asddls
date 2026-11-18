@EndUserText.label: 'Student maintenance'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@UI.headerInfo: {
  typeName: 'Student',
  typeNamePlural: 'Students',
  title: { type: #STANDARD, value: 'StudentNumber' }
}
define root view entity ZC_RAP_STUDENT
  provider contract transactional_query
  as projection on ZI_RAP_STUDENT
{
      @UI.facet: [{
        id: 'StudentDetails',
        type: #IDENTIFICATION_REFERENCE,
        label: 'Student details',
        position: 10
      }]
      @UI.hidden: true
  key StudentUUID,

      @EndUserText.label: 'Student Number'
      @UI.lineItem: [{ position: 10 }]
      @UI.identification: [{ position: 10 }]
      @UI.selectionField: [{ position: 10 }]
      StudentNumber,

      @EndUserText.label: 'First Name'
      @UI.lineItem: [{ position: 20 }]
      @UI.identification: [{ position: 20 }]
      FirstName,

      @EndUserText.label: 'Last Name'
      @UI.lineItem: [{ position: 30 }]
      @UI.identification: [{ position: 30 }]
      LastName,

      @EndUserText.label: 'Email'
      @UI.lineItem: [{ position: 40 }]
      @UI.identification: [{ position: 40 }]
      Email,

      @EndUserText.label: 'Enrollment Date'
      @UI.lineItem: [{ position: 50 }]
      @UI.identification: [{ position: 50 }]
      EnrollmentDate,

      @UI.hidden: true
      LocalLastChangedAt
}
