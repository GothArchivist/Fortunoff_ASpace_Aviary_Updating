# Fortunoff_ASpace_Aviary_Updating
A batch of SQL queries to facilitate creation and linking of archival objects and digital objects between ArchivesSpace and Aviary.

The Fortunoff Video Archive for Holocaust Testimonies uses ArchivesSpace as our content management system, which includes the storage of  top level description and metadata about individual testimonies, related audiovisual materials, and their time-synchronized indexes and transcripts. These are stored in what is called a resource record. The top level description of testimonies, indexes, and transcripts are ingested to populate our access system, Aviary. 

Indexes are synchronized from legacy summarized notes in the Oral History Metadata Synchronizer (OHMS) and transcripts are created using the 3play transcription service. Since these are both created as digital files, they must be added to ArchivesSpace as digital objects and then linked to their matching archival objects within the testimony's resource record. The updates are made using scripts created by fellow Yale archivist Alicia Detelich (https://github.com/ucancallmealicia), using information reported SQL queries.

## The Queries

### Get_Administrative_Documents_By_EAD_ID
Before the creation of Aviary, it was determined that indexes and transcripts would be stored as children of an archival object called "Administrative Documents." Since the creation of indexes and transcripts gives us the call number for their related testimony, this query was created to find these archival object records for each testimony. This was then used in a script for creating index and/or transcript archival objects as children of the "Administrative Documents" archival objects. Then, digital objects for the transcripts and indexes were also created using a script. 

### Get_Created_Archival_Objects
In order to link the archival objects to the digital objects, we need the created archival object information, as well as their resource record information. The easiest way to compile them in the same place is to run a query with the resource record's call number and the new titles. This information is used for a script to create the link between the digital files and the testimony it describes. 

### Get_Created_Digital_Objects
We also need the digital object information to do this linking. An easy way to do this is to run a query using the titles of the created digital objects. This information is used for the same script to create the link between the digital files and the testimony it describes. A final script is then run to perform this linking









