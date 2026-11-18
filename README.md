# SAP RAP student sample

Maintain student records with the SAP ABAP RESTful Application Programming Model (RAP). This managed, non-draft business object exposes CRUD operations through an OData V4 UI service. RAP generates the student UUID and uses the local change timestamp as an ETag for optimistic concurrency.

## Set up in ADT

Use an ABAP Cloud–capable SAP system and an ABAP package where you can create and activate development objects. Create the objects below in ADT in order, copy in the linked sources, and activate each object.

| ADT object type | Name | Source |
| --- | --- | --- |
| Database table | ZRAP_STUDENT | [Table](src/zrap_student.tabl.ddl) |
| Data definition | ZI_RAP_STUDENT | [Root entity](src/zi_rap_student.ddls.asddls) |
| Behavior definition | ZI_RAP_STUDENT | [Managed behavior](src/zi_rap_student.bdef.asbdef) |
| Data definition | ZC_RAP_STUDENT | [Projection](src/zc_rap_student.ddls.asddls) |
| Behavior definition | ZC_RAP_STUDENT | [Projection behavior](src/zc_rap_student.bdef.asbdef) |
| Service definition | ZUI_RAP_STUDENT | [Service definition](src/zui_rap_student.srvd.srvdsrv) |

Create the service binding `ZUI_RAP_STUDENT_O4` for `ZUI_RAP_STUDENT`, choose **OData V4 - UI**, then activate and publish it. Select **Students** in the binding editor and choose **Preview** to open the Fiori elements preview.

## Try it

Create a student with number `STU-001`, first name `Avery`, and last name `Morgan`. Save, filter by student number, and reopen the record. Edit the email, save, and delete the record when finished. If your Fiori elements version does not expose editing for this non-draft service, exercise the CRUD operations through the published OData endpoint.

The sample permits duplicate student numbers and omits application-level authorization and email format validation. Use fictional student data. SAP activation and runtime behavior have not been verified.
