// To parse this JSON data, do
//
//     final karyailmiah = karyailmiahFromJson(jsonString);

import 'dart:convert';

List<Karyailmiah> karyailmiahFromJson(String str) => List<Karyailmiah>.from(json.decode(str).map((x) => Karyailmiah.fromJson(x)));

String karyailmiahToJson(List<Karyailmiah> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Karyailmiah {
    Karyailmiah({
        required this.karyailmiahAbstract,
        required this.lastmod,
        required this.thesisType,
        this.note,
        required this.uri,
        required this.fullTextStatus,
        this.date,
        required this.keywords,
        required this.datestamp,
        required this.userid,
        required this.institution,
        required this.dateType,
        required this.contributors,
        required this.title,
        required this.pages,
        required this.documents,
        required this.type,
        required this.divisions,
        required this.contactEmail,
        required this.eprintStatus,
        required this.statusChanged,
        required this.department,
        required this.eprintid,
        required this.thesisName,
        required this.subjects,
        required this.dir,
        required this.ispublished,
        required this.metadataVisibility,
        required this.revNumber,
        required this.creators,
        required this.succeeds,
        required this.publication,
        required this.refereed,
    });

    String karyailmiahAbstract;
    DateTime lastmod;
    String thesisType;
    dynamic note;
    String uri;
    String fullTextStatus;
    dynamic date;
    String keywords;
    DateTime datestamp;
    int userid;
    String institution;
    String dateType;
    List<Contributor> contributors;
    String title;
    int pages;
    List<Document> documents;
    String type;
    List<String> divisions;
    String contactEmail;
    String eprintStatus;
    DateTime statusChanged;
    String department;
    int eprintid;
    String thesisName;
    List<String> subjects;
    String dir;
    String ispublished;
    String metadataVisibility;
    int revNumber;
    List<Creator> creators;
    int succeeds;
    String publication;
    String refereed;

    factory Karyailmiah.fromJson(Map<String, dynamic> json) => Karyailmiah(
        karyailmiahAbstract: json["abstract"],
        lastmod: DateTime.parse(json["lastmod"]),
        thesisType: json["thesis_type"],
        note: json["note"],
        uri: json["uri"],
        fullTextStatus: json["full_text_status"],
        date: json["date"],
        keywords: json["keywords"] == null ? null : json["keywords"],
        datestamp: DateTime.parse(json["datestamp"]),
        userid: json["userid"],
        institution: json["institution"],
        dateType: json["date_type"],
        contributors: List<Contributor>.from(json["contributors"].map((x) => Contributor.fromJson(x))),
        title: json["title"],
        pages: json["pages"] == null ? null : json["pages"],
        documents: List<Document>.from(json["documents"].map((x) => Document.fromJson(x))),
        type: json["type"],
        divisions: List<String>.from(json["divisions"].map((x) => x)),
        contactEmail: json["contact_email"] == null ? null : json["contact_email"],
        eprintStatus: json["eprint_status"],
        statusChanged: DateTime.parse(json["status_changed"]),
        department: json["department"],
        eprintid: json["eprintid"],
        thesisName: json["thesis_name"],
        subjects: List<String>.from(json["subjects"].map((x) => x)),
        dir: json["dir"],
        ispublished: json["ispublished"],
        metadataVisibility: json["metadata_visibility"],
        revNumber: json["rev_number"],
        creators: List<Creator>.from(json["creators"].map((x) => Creator.fromJson(x))),
        succeeds: json["succeeds"] == null ? null : json["succeeds"],
        publication: json["publication"] == null ? null : json["publication"],
        refereed: json["refereed"] == null ? null : json["refereed"],
    );

    Map<String, dynamic> toJson() => {
        "abstract": karyailmiahAbstract,
        "lastmod": lastmod.toIso8601String(),
        "thesis_type": thesisType,
        "note": note,
        "uri": uri,
        "full_text_status": fullTextStatus,
        "date": date,
        "keywords": keywords == null ? null : keywords,
        "datestamp": datestamp.toIso8601String(),
        "userid": userid,
        "institution": institution,
        "date_type": dateType,
        "contributors": List<dynamic>.from(contributors.map((x) => x.toJson())),
        "title": title,
        "pages": pages == null ? null : pages,
        "documents": List<dynamic>.from(documents.map((x) => x.toJson())),
        "type": type,
        "divisions": divisions == null ? null : List<dynamic>.from(divisions.map((x) => x)),
        "contact_email": contactEmail == null ? null : contactEmail,
        "eprint_status": eprintStatus,
        "status_changed": statusChanged.toIso8601String(),
        "department": department,
        "eprintid": eprintid,
        "thesis_name": thesisName,
        "subjects": List<dynamic>.from(subjects.map((x) => x)),
        "dir": dir,
        "ispublished": ispublished,
        "metadata_visibility": metadataVisibility,
        "rev_number": revNumber,
        "creators": List<dynamic>.from(creators.map((x) => x.toJson())),
        "succeeds": succeeds == null ? null : succeeds,
        "publication": publication == null ? null : publication,
        "refereed": refereed == null ? null : refereed,
    };
}

class Contributor {
    Contributor({
        this.id,
        required this.name,
    });

    dynamic id;
    Name name;

    factory Contributor.fromJson(Map<String, dynamic> json) => Contributor(
        id: json["id"],
        name: Name.fromJson(json["name"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name.toJson(),
    };
}

class Name {
    Name({
        this.honourific,
        required this.given,
        required this.family,
        this.lineage,
    });

    dynamic honourific;
    String given;
    String family;
    dynamic lineage;

    factory Name.fromJson(Map<String, dynamic> json) => Name(
        honourific: json["honourific"],
        given: json["given"],
        family: json["family"],
        lineage: json["lineage"],
    );

    Map<String, dynamic> toJson() => {
        "honourific": honourific,
        "given": given,
        "family": family,
        "lineage": lineage,
    };
}

class Creator {
    Creator({
        required this.id,
        required this.name,
    });

    String id;
    Name name;

    factory Creator.fromJson(Map<String, dynamic> json) => Creator(
        id: json["id"],
        name: Name.fromJson(json["name"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name.toJson(),
    };
}

class Document {
    Document({
        required this.security,
        required this.files,
        required this.mimeType,
        required this.uri,
        required this.main,
        required this.language,
        required this.format,
        required this.eprintid,
        required this.docid,
        required this.pos,
        required this.formatdesc,
        required this.revNumber,
        required this.placement,
        required this.content,
    });

    String security;
    List<FileElement> files;
    String mimeType;
    String uri;
    String main;
    String language;
    String format;
    int eprintid;
    int docid;
    int pos;
    String formatdesc;
    int revNumber;
    int placement;
    String content;

    factory Document.fromJson(Map<String, dynamic> json) => Document(
        security: json["security"],
        files: List<FileElement>.from(json["files"].map((x) => FileElement.fromJson(x))),
        mimeType: json["mime_type"],
        uri: json["uri"],
        main: json["main"],
        language: json["language"],
        format: json["format"],
        eprintid: json["eprintid"],
        docid: json["docid"],
        pos: json["pos"],
        formatdesc: json["formatdesc"] == null ? null : json["formatdesc"],
        revNumber: json["rev_number"],
        placement: json["placement"],
        content: json["content"] == null ? null : json["content"],
    );

    Map<String, dynamic> toJson() => {
        "security": security,
        "files": List<dynamic>.from(files.map((x) => x.toJson())),
        "mime_type": mimeType,
        "uri": uri,
        "main": main,
        "language": language,
        "format": format,
        "eprintid": eprintid,
        "docid": docid,
        "pos": pos,
        "formatdesc": formatdesc == null ? null : formatdesc,
        "rev_number": revNumber,
        "placement": placement,
        "content": content == null ? null : content,
    };
}

class FileElement {
    FileElement({
        required this.fileid,
        required this.datasetid,
        required this.hashType,
        required this.hash,
        required this.mimeType,
        required this.uri,
        required this.filename,
        required this.filesize,
        required this.objectid,
        required this.mtime,
    });

    int fileid;
    String datasetid;
    String hashType;
    String hash;
    String mimeType;
    String uri;
    String filename;
    int filesize;
    int objectid;
    DateTime mtime;

    factory FileElement.fromJson(Map<String, dynamic> json) => FileElement(
        fileid: json["fileid"],
        datasetid: json["datasetid"],
        hashType: json["hash_type"],
        hash: json["hash"],
        mimeType: json["mime_type"],
        uri: json["uri"],
        filename: json["filename"],
        filesize: json["filesize"],
        objectid: json["objectid"],
        mtime: DateTime.parse(json["mtime"]),
    );

    Map<String, dynamic> toJson() => {
        "fileid": fileid,
        "datasetid": datasetid,
        "hash_type": hashType,
        "hash": hash,
        "mime_type": mimeType,
        "uri": uri,
        "filename": filename,
        "filesize": filesize,
        "objectid": objectid,
        "mtime": mtime.toIso8601String(),
    };
}
