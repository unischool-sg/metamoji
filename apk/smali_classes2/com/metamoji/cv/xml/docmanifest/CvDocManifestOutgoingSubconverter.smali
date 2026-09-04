.class public Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;
.super Ljava/lang/Object;
.source "CvDocManifestOutgoingSubconverter.java"

# interfaces
.implements Lcom/metamoji/cv/ICvSubconverter;


# instance fields
.field protected m_isForCollabo:Z

.field protected m_namespaceURI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->m_namespaceURI:Ljava/lang/String;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->m_isForCollabo:Z

    return-void
.end method


# virtual methods
.method public accept(Lcom/metamoji/cv/CvConvertItem;)Z
    .locals 3

    .line 58
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    const-class v1, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 64
    :cond_0
    iget-boolean v2, v0, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->isManifestTreated:Z

    if-eqz v2, :cond_1

    return v1

    .line 68
    :cond_1
    const-string v1, "manifest"

    const-string v2, "xml"

    invoke-virtual {v0, p1, v1, v2}, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->fillOutgoingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 6

    .line 85
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    check-cast v0, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;

    const/4 v1, 0x1

    .line 86
    iput-boolean v1, v0, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->isManifestTreated:Z

    .line 88
    instance-of v2, v0, Lcom/metamoji/cv/xml/CvAtCollaboConvertContext;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 89
    const-string v2, "http://xmlns.metamoji.com/noteanytime/sharemanifest/1.0"

    iput-object v2, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->m_namespaceURI:Ljava/lang/String;

    .line 90
    iput-boolean v1, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->m_isForCollabo:Z

    goto :goto_0

    .line 92
    :cond_0
    const-string v2, "http://xmlns.metamoji.com/noteanytime/docmanifest/1.0"

    iput-object v2, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->m_namespaceURI:Ljava/lang/String;

    .line 93
    iput-boolean v3, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->m_isForCollabo:Z

    :goto_0
    const/4 v2, 0x0

    .line 97
    :try_start_0
    invoke-static {}, Lcom/metamoji/cv/xml/XmlUtils;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    .line 98
    iget-object v5, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    .line 99
    invoke-virtual {p0, v4, v5, v0}, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->generateManifestElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    .line 101
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object p1

    .line 102
    invoke-static {v4, p1}, Lcom/metamoji/cv/xml/XmlUtils;->saveXMLFile(Lorg/w3c/dom/Document;Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iput-object v2, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->m_namespaceURI:Ljava/lang/String;

    .line 105
    iput-boolean v3, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->m_isForCollabo:Z

    return-void

    :catchall_0
    move-exception p1

    .line 104
    iput-object v2, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->m_namespaceURI:Ljava/lang/String;

    .line 105
    iput-boolean v3, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->m_isForCollabo:Z

    .line 106
    throw p1
.end method

.method generateAttachmentsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 3

    .line 421
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 422
    iget-object v1, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->m_namespaceURI:Ljava/lang/String;

    const-string v2, "attachments"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 427
    const-string v1, "ref"

    invoke-static {v0, p2, p3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addRefAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;)V

    .line 430
    :cond_0
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method generateCreateDateElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 249
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->m_namespaceURI:Ljava/lang/String;

    const-string v2, "create-date"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 253
    new-instance v1, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter$1;

    invoke-direct {v1, p0}, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter$1;-><init>(Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;)V

    const-string v2, "create"

    invoke-static {v0, p2, v2, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addTextNode(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Outgoing$IStringConverter;)V

    .line 260
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method generateGeneratorElementWithGenerator(Lorg/w3c/dom/Element;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 207
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->m_namespaceURI:Ljava/lang/String;

    const-string v2, "generator"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 212
    const-string v2, "product"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 213
    invoke-static {v3}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 214
    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_0
    const-string v2, "version"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 217
    invoke-static {v3}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 218
    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_1
    const-string v2, "name"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 221
    invoke-static {p2}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 222
    invoke-interface {v0, p2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p2

    .line 223
    invoke-interface {v1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 225
    :cond_2
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method generateManifestElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->m_namespaceURI:Ljava/lang/String;

    const-string v1, "manifest"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 127
    const-string v1, "docMetaData"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 130
    iget-object v2, p3, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->options:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 133
    const-string v3, "generator"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 134
    check-cast v2, Ljava/util/Map;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 139
    invoke-virtual {p0, v0, v2}, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->generateGeneratorElementWithGenerator(Lorg/w3c/dom/Element;Ljava/util/Map;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 144
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->generateTitleElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;)V

    .line 147
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->generateCreateDateElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;)V

    .line 150
    invoke-virtual {p0, v0, v1, p3}, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->generateUpdateDateElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    .line 153
    iget-boolean v2, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->m_isForCollabo:Z

    if-nez v2, :cond_2

    .line 154
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->generateTemplateElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;)V

    .line 159
    :cond_2
    invoke-virtual {p0, v0, p2, p3}, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->generateThumbnailElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    .line 162
    const-string v1, "settings"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 163
    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 164
    :cond_3
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "CV0013"

    const-string p3, "unsupported type of settings model"

    invoke-direct {p1, p2, p3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 166
    :cond_4
    :goto_1
    invoke-virtual {p0, v0, v2, p3}, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->generateSettingsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    .line 169
    const-string v1, "attachments"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 170
    const-string v3, "CV0015"

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    .line 171
    :cond_5
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "unsupported type of attachments model"

    invoke-direct {p1, v3, p2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 173
    :cond_6
    :goto_2
    invoke-virtual {p0, v0, v2, p3}, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->generateAttachmentsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    .line 176
    const-string v1, "CT_SQLDB"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 177
    instance-of v2, v1, Lcom/metamoji/sqldb/SqlModel;

    if-eqz v2, :cond_7

    goto :goto_3

    .line 178
    :cond_7
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "CV0016"

    const-string p3, "sqldbs model not found"

    invoke-direct {p1, p2, p3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_3
    if-eqz v1, :cond_a

    .line 180
    const-string v2, "!type"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "$sqldb"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_4

    .line 181
    :cond_9
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "CV0017"

    const-string p3, "unsupported type of sqldbs model"

    invoke-direct {p1, p2, p3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 183
    :cond_a
    :goto_4
    invoke-virtual {p0, v0, v1, p3}, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->generateSqldbsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    .line 186
    invoke-virtual {p0, v0, p2, p3}, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->generateSheetElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    .line 189
    const-string v1, "recordings"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 192
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_5

    .line 193
    :cond_b
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "unsupported type of recordings model"

    invoke-direct {p1, v3, p2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 195
    :cond_c
    :goto_5
    invoke-virtual {p0, v0, p2, p3}, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->generateRecordingsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    .line 197
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method generateRecordingsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 483
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 484
    iget-object v1, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->m_namespaceURI:Ljava/lang/String;

    const-string v2, "recordings"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 486
    iget-object v1, p3, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->converter:Lcom/metamoji/cv/CvModelConverter;

    invoke-virtual {v1, p2, p3}, Lcom/metamoji/cv/CvModelConverter;->exportModels(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/CvConvertContext;)Ljava/lang/Object;

    move-result-object p2

    .line 487
    invoke-virtual {p3, p2}, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->makeExternalFilePathRelative(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 488
    const-string p3, "ref"

    invoke-interface {v0, p3, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    return-void
.end method

.method generateSettingElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 3

    .line 401
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 402
    iget-object v1, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->m_namespaceURI:Ljava/lang/String;

    const-string v2, "setting"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 406
    const-string v1, "name"

    invoke-interface {v0, v1, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string p3, "ref"

    invoke-static {v0, p2, p4, p3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addRefAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;)V

    .line 411
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method generateSettingsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 5

    .line 366
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->m_namespaceURI:Ljava/lang/String;

    const-string v2, "settings"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz p2, :cond_3

    .line 372
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v1

    .line 373
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 374
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x21

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 378
    :cond_0
    iget-boolean v3, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->m_isForCollabo:Z

    if-nez v3, :cond_1

    const-string v3, "MMJNsShareSettings"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 382
    :cond_1
    invoke-interface {p2, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 386
    :cond_2
    invoke-virtual {p0, v0, v3, v2, p3}, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->generateSettingElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V

    goto :goto_0

    .line 390
    :cond_3
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method generateSheetElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 3

    .line 440
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 441
    iget-object v1, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->m_namespaceURI:Ljava/lang/String;

    const-string v2, "sheet"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 445
    const-string v1, "ref"

    invoke-static {v0, p2, p3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addRefAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;)V

    .line 447
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method generateSqldbsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 460
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 461
    iget-object v1, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->m_namespaceURI:Ljava/lang/String;

    const-string v2, "sqldbs"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 463
    const-string v1, "ref"

    invoke-static {v0, p2, p3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addRefAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;)V

    .line 465
    const-string p3, "!version"

    const-string v1, "version"

    invoke-static {v0, p2, p3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string p3, "datakind"

    invoke-static {v0, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    return-void
.end method

.method generateTemplateElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 295
    const-string v0, "template"

    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 297
    iget-object v2, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->m_namespaceURI:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const/4 v2, 0x0

    .line 298
    invoke-interface {p2, v0, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 299
    const-string p2, "true"

    goto :goto_0

    :cond_0
    const-string p2, "false"

    :goto_0
    const-string v0, "value"

    invoke-interface {v1, v0, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    return-void
.end method

.method generateThumbnailElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 7

    .line 311
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 323
    const-string v1, "settings"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 325
    const-string v2, "MMJNtDocumentSettings"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 327
    invoke-static {v1}, Lcom/metamoji/cv/xml/docsettings/CvDocSettingsOutgoingSubconverter;->documentThumbnailFromDocumentSettingsModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/cm/Blob;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 332
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    .line 334
    invoke-static {p2}, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteOutgoingSubconverter;->pageThumbnailFromPageModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/cm/Blob;

    move-result-object v1

    goto :goto_1

    :cond_1
    move v3, v2

    :cond_2
    :goto_1
    if-eqz v1, :cond_5

    .line 338
    const-string p2, "thumbnail"

    if-eqz v3, :cond_3

    const-string v4, "docthumbnail"

    goto :goto_2

    :cond_3
    move-object v4, p2

    .line 339
    :goto_2
    invoke-virtual {v1}, Lcom/metamoji/cm/Blob;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/cv/CvConverterUtils;->imageExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 341
    new-instance v6, Lcom/metamoji/cv/CvConvertItem;

    invoke-direct {v6}, Lcom/metamoji/cv/CvConvertItem;-><init>()V

    .line 342
    invoke-virtual {p3, v6, v4, v5}, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->fillOutgoingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v4, v6, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    invoke-virtual {p3, v4, v2}, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object v2

    .line 344
    invoke-virtual {v1}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/metamoji/cm/CmUtils;->saveBufferToFile(Ljava/io/File;[B)Z

    .line 345
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_4

    .line 348
    iput-object v1, p3, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->docThumbnailFileName:Ljava/lang/String;

    goto :goto_3

    .line 350
    :cond_4
    iput-object v1, p3, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->firstPageThumbnailFileName:Ljava/lang/String;

    .line 353
    :goto_3
    iget-object p3, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->m_namespaceURI:Ljava/lang/String;

    invoke-interface {v0, p3, p2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 354
    const-string p3, "ref"

    invoke-interface {p2, p3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_5
    return-void
.end method

.method generateTitleElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 234
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->m_namespaceURI:Ljava/lang/String;

    const-string v2, "title"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 238
    invoke-static {v0, p2, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addTextNode(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    .line 240
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method generateUpdateDateElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;)V
    .locals 5

    .line 270
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->m_namespaceURI:Ljava/lang/String;

    const-string v2, "update-date"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 274
    iget-object p3, p3, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->options:Ljava/util/Map;

    const-wide/16 v2, 0x0

    if-eqz p3, :cond_0

    .line 277
    const-string v4, "overwriteUpdateDate"

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 278
    invoke-static {p3, v2, v3}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;D)D

    move-result-wide p2

    goto :goto_0

    .line 280
    :cond_0
    const-string p3, "update"

    invoke-interface {p2, p3, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide p2

    .line 282
    :goto_0
    invoke-static {p2, p3}, Lcom/metamoji/cm/TimeUtils;->unixTimestampToISOString(D)Ljava/lang/String;

    move-result-object p2

    .line 283
    invoke-interface {v0, p2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p2

    .line 285
    invoke-interface {v1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 286
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 114
    const-string v0, "$freenote"

    return-object v0
.end method
