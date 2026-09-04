.class public Lcom/metamoji/cv/xml/partmanifest/CvPartManifestOutgoingSubconverter;
.super Ljava/lang/Object;
.source "CvPartManifestOutgoingSubconverter.java"

# interfaces
.implements Lcom/metamoji/cv/ICvSubconverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/metamoji/cv/CvConvertItem;)Z
    .locals 3

    .line 43
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    const-class v1, Lcom/metamoji/cv/xml/CvPartConvertContext;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cv/xml/CvPartConvertContext;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 48
    :cond_0
    const-string v1, "manifest"

    const-string v2, "xml"

    invoke-virtual {v0, p1, v1, v2}, Lcom/metamoji/cv/xml/CvPartConvertContext;->fillOutgoingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 3

    .line 65
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    check-cast v0, Lcom/metamoji/cv/xml/CvPartConvertContext;

    .line 67
    invoke-static {}, Lcom/metamoji/cv/xml/XmlUtils;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 70
    iget-object v2, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    .line 71
    invoke-virtual {p0, v1, v2, v0}, Lcom/metamoji/cv/xml/partmanifest/CvPartManifestOutgoingSubconverter;->generateManifestElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvPartConvertContext;)V

    .line 73
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/metamoji/cv/xml/CvPartConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object p1

    .line 74
    invoke-static {v1, p1}, Lcom/metamoji/cv/xml/XmlUtils;->saveXMLFile(Lorg/w3c/dom/Document;Ljava/io/File;)Z

    return-void
.end method

.method generateAttachmentsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvPartConvertContext;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 210
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 211
    const-string v1, "http://xmlns.metamoji.com/noteanytime/partmanifest/1.0"

    const-string v2, "attachments"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 212
    const-string v1, "ref"

    invoke-static {v0, p2, p3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addRefAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;)V

    .line 213
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    return-void
.end method

.method generateCreateDateElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 166
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 167
    const-string v1, "http://xmlns.metamoji.com/noteanytime/partmanifest/1.0"

    const-string v2, "create-date"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    new-instance v1, Lcom/metamoji/cv/xml/partmanifest/CvPartManifestOutgoingSubconverter$1;

    invoke-direct {v1, p0}, Lcom/metamoji/cv/xml/partmanifest/CvPartManifestOutgoingSubconverter$1;-><init>(Lcom/metamoji/cv/xml/partmanifest/CvPartManifestOutgoingSubconverter;)V

    const-string v2, "createDate"

    invoke-static {v0, p2, v2, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addTextNode(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Outgoing$IStringConverter;)V

    .line 178
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    return-void
.end method

.method generateManifestElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvPartConvertContext;)V
    .locals 4

    .line 93
    const-string v0, "http://xmlns.metamoji.com/noteanytime/partmanifest/1.0"

    const-string v1, "manifest"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 97
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result v1

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "partMetaData"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/cv/xml/partmanifest/CvPartManifestOutgoingSubconverter;->generateTitleElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;)V

    .line 108
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/cv/xml/partmanifest/CvPartManifestOutgoingSubconverter;->generateCreateDateElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;)V

    .line 112
    :cond_0
    const-string v1, "attachments"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 114
    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 115
    :cond_1
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "CV0039"

    const-string p3, "unsupported type of attachments model"

    invoke-direct {p1, p2, p3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 117
    :cond_2
    :goto_0
    invoke-virtual {p0, v0, v2, p3}, Lcom/metamoji/cv/xml/partmanifest/CvPartManifestOutgoingSubconverter;->generateAttachmentsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvPartConvertContext;)V

    .line 120
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 122
    invoke-virtual {p0, v0, v1, p3}, Lcom/metamoji/cv/xml/partmanifest/CvPartManifestOutgoingSubconverter;->generatePartElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvPartConvertContext;)V

    .line 126
    :cond_3
    instance-of v1, p3, Lcom/metamoji/cv/xml/CvPartMetaConvertContext;

    const-string v2, "thumbnail"

    if-eqz v1, :cond_4

    .line 129
    invoke-interface {p2, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 131
    invoke-virtual {p0, v0, p2, p3}, Lcom/metamoji/cv/xml/partmanifest/CvPartManifestOutgoingSubconverter;->generateThumbnailElementWithThumbnail(Lorg/w3c/dom/Element;Lcom/metamoji/cm/Blob;Lcom/metamoji/cv/xml/CvPartConvertContext;)V

    goto :goto_1

    .line 135
    :cond_4
    iget-object p2, p3, Lcom/metamoji/cv/xml/CvPartConvertContext;->options:Ljava/util/Map;

    if-eqz p2, :cond_5

    .line 137
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 138
    instance-of v1, p2, Lcom/metamoji/cm/Blob;

    if-eqz v1, :cond_5

    .line 139
    check-cast p2, Lcom/metamoji/cm/Blob;

    invoke-virtual {p0, v0, p2, p3}, Lcom/metamoji/cv/xml/partmanifest/CvPartManifestOutgoingSubconverter;->generateThumbnailElementWithThumbnail(Lorg/w3c/dom/Element;Lcom/metamoji/cm/Blob;Lcom/metamoji/cv/xml/CvPartConvertContext;)V

    .line 143
    :cond_5
    :goto_1
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method generatePartElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvPartConvertContext;)V
    .locals 3

    .line 225
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 226
    const-string v1, "http://xmlns.metamoji.com/noteanytime/partmanifest/1.0"

    const-string v2, "part"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 230
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v1

    .line 231
    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v1, "ref"

    invoke-static {v0, p2, p3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addRefAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;)V

    .line 235
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method generateThumbnailElementWithThumbnail(Lorg/w3c/dom/Element;Lcom/metamoji/cm/Blob;Lcom/metamoji/cv/xml/CvPartConvertContext;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 190
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 191
    const-string v1, "http://xmlns.metamoji.com/noteanytime/partmanifest/1.0"

    const-string v2, "thumbnail"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 192
    const-string v1, "thumbnail.jpg"

    const/4 v2, 0x1

    invoke-virtual {p3, v1, v2}, Lcom/metamoji/cv/xml/CvPartConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object p3

    .line 193
    invoke-virtual {p2}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p2

    invoke-static {p3, p2}, Lcom/metamoji/cm/CmUtils;->saveBufferToFile(Ljava/io/File;[B)Z

    .line 194
    const-string p2, "ref"

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    return-void
.end method

.method generateTitleElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 152
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 153
    const-string v1, "http://xmlns.metamoji.com/noteanytime/partmanifest/1.0"

    const-string v2, "title"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 156
    invoke-static {v0, p2, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addTextNode(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    .line 157
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 82
    const-string v0, "part"

    return-object v0
.end method
