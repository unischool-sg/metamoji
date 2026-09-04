.class public Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;
.super Ljava/lang/Object;
.source "CvDocManifestIncomingSubconverter.java"

# interfaces
.implements Lcom/metamoji/cv/ICvSubconverter;


# instance fields
.field protected m_isForCollabo:Z

.field protected m_namespaceURI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->m_namespaceURI:Ljava/lang/String;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->m_isForCollabo:Z

    return-void
.end method


# virtual methods
.method public accept(Lcom/metamoji/cv/CvConvertItem;)Z
    .locals 5

    .line 56
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    const-class v1, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 62
    :cond_0
    instance-of v2, v0, Lcom/metamoji/cv/xml/CvAtCollaboConvertContext;

    const-string v3, "$sharenote"

    if-eqz v2, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    iget-object v2, v0, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->options:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 68
    const-string v4, "generateCollaboNote"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 70
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_0

    .line 77
    :cond_3
    const-string v3, "$freenote"

    .line 81
    :goto_0
    invoke-virtual {v0, p1, v3}, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->fillIncomingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;)V

    .line 82
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    iput-object p1, v0, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->freenoteModel:Lcom/metamoji/df/model/IModel;

    const/4 p1, 0x1

    return p1
.end method

.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 6

    .line 100
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    check-cast v0, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;

    .line 102
    instance-of v1, v0, Lcom/metamoji/cv/xml/CvAtCollaboConvertContext;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 103
    const-string v1, "http://xmlns.metamoji.com/noteanytime/sharemanifest/1.0"

    iput-object v1, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->m_namespaceURI:Ljava/lang/String;

    const/4 v1, 0x1

    .line 104
    iput-boolean v1, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->m_isForCollabo:Z

    goto :goto_0

    .line 106
    :cond_0
    const-string v1, "http://xmlns.metamoji.com/noteanytime/docmanifest/1.0"

    iput-object v1, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->m_namespaceURI:Ljava/lang/String;

    .line 107
    iput-boolean v2, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->m_isForCollabo:Z

    :goto_0
    const/4 v1, 0x0

    .line 111
    :try_start_0
    iget-object v3, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    invoke-virtual {v0, v3, v2}, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object v3

    .line 113
    invoke-static {v3}, Lcom/metamoji/cv/xml/XmlUtils;->loadXMLFile(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 114
    const-string v4, "manifest"

    iget-object v5, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->m_namespaceURI:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 121
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {p0, v3, p1, v0}, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->parseManifestElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iput-object v1, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->m_namespaceURI:Ljava/lang/String;

    .line 124
    iput-boolean v2, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->m_isForCollabo:Z

    return-void

    .line 118
    :cond_1
    :try_start_1
    const-string p1, "not a manifest sheet file. (no root element)"

    .line 119
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v3, "CV0005"

    invoke-direct {v0, v3, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 123
    iput-object v1, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->m_namespaceURI:Ljava/lang/String;

    .line 124
    iput-boolean v2, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->m_isForCollabo:Z

    .line 125
    throw p1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 134
    const-string v0, "manifest"

    return-object v0
.end method

.method parseAttachmentsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 1

    .line 346
    const-string v0, "ref"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 347
    invoke-static {p1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p3, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->converter:Lcom/metamoji/cv/CvModelConverter;

    invoke-virtual {v0, p1, p3}, Lcom/metamoji/cv/CvModelConverter;->importModels(Ljava/lang/Object;Lcom/metamoji/cv/CvConvertContext;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 352
    const-string p3, "attachments"

    invoke-interface {p2, p3, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 348
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "CV0010"

    const-string p3, "ref attribute is not found in attachments element."

    invoke-direct {p1, p2, p3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method parseCreateDateElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 2

    .line 234
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    .line 235
    invoke-static {p1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 237
    :try_start_0
    invoke-static {p1}, Lcom/metamoji/cm/TimeUtils;->isoStringToUnixTimestamp(Ljava/lang/String;)D

    move-result-wide v0

    .line 238
    const-string p1, "create"

    invoke-interface {p2, p1, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 240
    const-string p2, "time String error. "

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method parseManifestElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 3

    .line 145
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 147
    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 150
    const-string v1, "docmeta"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 151
    const-string v1, "docMetaData"

    invoke-interface {p2, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 154
    const-string v1, "title"

    iget-object v2, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->m_namespaceURI:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {p0, v1, v0, p3}, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->parseTitleElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    .line 160
    :cond_0
    const-string v1, "create-date"

    iget-object v2, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->m_namespaceURI:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 162
    invoke-virtual {p0, v1, v0, p3}, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->parseCreateDateElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    .line 166
    :cond_1
    const-string v1, "update-date"

    iget-object v2, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->m_namespaceURI:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 168
    invoke-virtual {p0, v1, v0, p3}, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->parseUpdateDateElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    .line 172
    :cond_2
    const-string v1, "template"

    iget-object v2, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->m_namespaceURI:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 174
    invoke-virtual {p0, v1, v0, p3}, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->parseTemplateElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    .line 181
    :cond_3
    const-string v0, "settings"

    iget-object v1, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->m_namespaceURI:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 183
    invoke-virtual {p0, v0, p2, p3}, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->parseSettingsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    .line 187
    :cond_4
    const-string v0, "attachments"

    iget-object v1, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->m_namespaceURI:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 189
    invoke-virtual {p0, v0, p2, p3}, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->parseAttachmentsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    .line 193
    :cond_5
    const-string v0, "sqldbs"

    iget-object v1, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->m_namespaceURI:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 195
    invoke-virtual {p0, v0, p2, p3}, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->parseSqldbsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    .line 199
    :cond_6
    const-string v0, "sheet"

    iget-object v1, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->m_namespaceURI:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 201
    invoke-virtual {p0, v0, p3}, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->parseSheetElement(Lorg/w3c/dom/Element;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    goto :goto_0

    .line 202
    :cond_7
    iget-boolean v0, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->m_isForCollabo:Z

    if-eqz v0, :cond_9

    .line 207
    :goto_0
    const-string v0, "recordings"

    iget-object v1, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->m_namespaceURI:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 209
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->parseRecordingsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    :cond_8
    return-void

    .line 203
    :cond_9
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "CV0007"

    const-string p3, "sheet element is not found."

    invoke-direct {p1, p2, p3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method parseRecordingsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 1

    .line 412
    const-string v0, "ref"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 413
    invoke-static {p1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    iget-object v0, p3, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->converter:Lcom/metamoji/cv/CvModelConverter;

    invoke-virtual {v0, p1, p3}, Lcom/metamoji/cv/CvModelConverter;->importModels(Ljava/lang/Object;Lcom/metamoji/cv/CvConvertContext;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 418
    const-string p3, "recordings"

    invoke-interface {p2, p3, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 414
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "CV0010"

    const-string p3, "ref attribute is not found in recordings element."

    invoke-direct {p1, p2, p3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method parseSettingElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 2

    .line 316
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-static {v0}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 320
    iget-boolean v1, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->m_isForCollabo:Z

    if-nez v1, :cond_0

    const-string v1, "MMJNsShareSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 327
    :cond_0
    const-string v1, "ref"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 328
    invoke-static {p1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 331
    iget-object v1, p3, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->converter:Lcom/metamoji/cv/CvModelConverter;

    invoke-virtual {v1, p1, p3}, Lcom/metamoji/cv/CvModelConverter;->importModels(Ljava/lang/Object;Lcom/metamoji/cv/CvConvertContext;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 333
    invoke-interface {p2, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 329
    :cond_1
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "CV0009"

    const-string p3, "ref attribute is not found in setting element."

    invoke-direct {p1, p2, p3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 318
    :cond_2
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "CV0008"

    const-string p3, "name attribute is not found in setting element."

    invoke-direct {p1, p2, p3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method parseSettingsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 3

    .line 290
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    const-string v1, "settings"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const/4 v2, 0x1

    .line 291
    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 292
    invoke-interface {p2, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 294
    const-string p2, "setting"

    iget-object v1, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->m_namespaceURI:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 296
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 297
    invoke-interface {p1, p2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 298
    instance-of v2, v1, Lorg/w3c/dom/Element;

    if-eqz v2, :cond_0

    .line 299
    check-cast v1, Lorg/w3c/dom/Element;

    .line 300
    invoke-virtual {p0, v1, v0, p3}, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;->parseSettingElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method parseSheetElement(Lorg/w3c/dom/Element;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 1

    .line 364
    const-string v0, "ref"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 365
    invoke-static {p1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p2, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->converter:Lcom/metamoji/cv/CvModelConverter;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/cv/CvModelConverter;->importModels(Ljava/lang/Object;Lcom/metamoji/cv/CvConvertContext;)Lcom/metamoji/df/model/IModel;

    return-void

    .line 366
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "CV0011"

    const-string v0, "ref attribute is not found in sheet element."

    invoke-direct {p1, p2, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method parseSqldbsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 2

    .line 381
    const-string v0, "ref"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-static {v0}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 385
    iget-object v1, p3, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->converter:Lcom/metamoji/cv/CvModelConverter;

    invoke-virtual {v1, v0, p3}, Lcom/metamoji/cv/CvModelConverter;->importModels(Ljava/lang/Object;Lcom/metamoji/cv/CvConvertContext;)Lcom/metamoji/df/model/IModel;

    move-result-object p3

    .line 388
    const-string v0, "version"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-static {v0}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 392
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 394
    const-string v0, "datakind"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 395
    invoke-static {p1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 398
    invoke-interface {p3, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string p1, "CT_SQLDB"

    invoke-interface {p2, p1, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 396
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "CV0014"

    const-string p3, "datakind attribute is not found in sqldbs element."

    invoke-direct {p1, p2, p3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 390
    :cond_1
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "CV0013"

    const-string p3, "version attribute is not found in sqldbs element."

    invoke-direct {p1, p2, p3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 383
    :cond_2
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "CV0012"

    const-string p3, "ref attribute is not found in sqldbs element."

    invoke-direct {p1, p2, p3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method parseTemplateElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 1

    .line 272
    const-string p3, "value"

    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 273
    invoke-static {p1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 274
    const-string p3, "true"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v0, "template"

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    .line 275
    invoke-interface {p2, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    return-void

    .line 276
    :cond_0
    const-string p3, "false"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 277
    invoke-interface {p2, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method parseTitleElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 0

    .line 221
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    .line 222
    invoke-static {p1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 223
    const-string p3, "title"

    invoke-interface {p2, p3, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method parseUpdateDateElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 2

    .line 253
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-static {p1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 256
    :try_start_0
    invoke-static {p1}, Lcom/metamoji/cm/TimeUtils;->isoStringToUnixTimestamp(Ljava/lang/String;)D

    move-result-wide v0

    .line 257
    const-string p1, "update"

    invoke-interface {p2, p1, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 259
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "time String error. "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
