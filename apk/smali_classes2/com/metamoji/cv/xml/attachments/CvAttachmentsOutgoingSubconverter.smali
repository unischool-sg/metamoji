.class public Lcom/metamoji/cv/xml/attachments/CvAttachmentsOutgoingSubconverter;
.super Ljava/lang/Object;
.source "CvAttachmentsOutgoingSubconverter.java"

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

    .line 42
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    const-class v1, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 47
    :cond_0
    const-string v1, "attachments"

    const-string v2, "xml"

    invoke-virtual {v0, p1, v1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->fillOutgoingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 3

    .line 65
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    .line 67
    invoke-static {}, Lcom/metamoji/cv/xml/XmlUtils;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 68
    iget-object v2, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    .line 69
    invoke-virtual {p0, v1, v2, v0}, Lcom/metamoji/cv/xml/attachments/CvAttachmentsOutgoingSubconverter;->generateAttachmentsElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 71
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object p1

    .line 72
    invoke-static {v1, p1}, Lcom/metamoji/cv/xml/XmlUtils;->saveXMLFile(Lorg/w3c/dom/Document;Ljava/io/File;)Z

    return-void
.end method

.method generateAttachmentElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 6

    .line 154
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 155
    const-string v1, "http://xmlns.metamoji.com/noteanytime/attachments/1.0"

    const-string v2, "attachment"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 157
    const-string v1, "ticket"

    invoke-interface {v0, v1, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string p3, "$filename"

    invoke-interface {p2, p3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 160
    invoke-static {p2}, Lcom/metamoji/df/controller/AttachmentsManager;->getMimeTypeFromModel(Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object v1

    .line 162
    const-string v2, "$blob"

    invoke-interface {p2, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object p2

    if-eqz p2, :cond_5

    if-nez v1, :cond_0

    .line 165
    invoke-virtual {p2}, Lcom/metamoji/cm/Blob;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 168
    :cond_0
    invoke-virtual {p2}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    if-eqz p3, :cond_1

    .line 177
    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 179
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 182
    :cond_2
    :goto_0
    invoke-static {v3}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    .line 185
    invoke-virtual {p0, v1}, Lcom/metamoji/cv/xml/attachments/CvAttachmentsOutgoingSubconverter;->makeExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    :cond_3
    invoke-static {v3}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 190
    const-string v3, "dat"

    .line 193
    :cond_4
    new-instance v4, Lcom/metamoji/cv/CvConvertItem;

    invoke-direct {v4}, Lcom/metamoji/cv/CvConvertItem;-><init>()V

    .line 194
    const-string v5, "data"

    invoke-virtual {p4, v4, v5, v3}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->fillOutgoingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v3, v4, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    invoke-virtual {p4, v3, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object v2

    .line 196
    invoke-virtual {p2}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p2

    invoke-static {v2, p2}, Lcom/metamoji/cm/CmUtils;->saveBufferToFile(Ljava/io/File;[B)Z

    .line 197
    iget-object p2, v4, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    invoke-virtual {p4, p2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePathRelative(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 198
    const-string p4, "ref"

    invoke-interface {v0, p4, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v1, :cond_6

    .line 203
    const-string p2, "mime-type"

    invoke-interface {v0, p2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz p3, :cond_7

    .line 207
    const-string p2, "filename"

    invoke-interface {v0, p2, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_7
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method generateAttachmentsElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 7

    .line 91
    const-string v0, "http://xmlns.metamoji.com/noteanytime/attachments/1.0"

    const-string v1, "attachments"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 93
    iget-object v1, p3, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->options:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 96
    const-string v2, "attachmentTickets"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    check-cast v1, Ljava/util/Set;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 102
    :goto_0
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v2

    .line 103
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 105
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 110
    :cond_2
    invoke-interface {p2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 111
    instance-of v5, v4, Lcom/metamoji/df/model/IModel;

    if-eqz v5, :cond_1

    .line 112
    check-cast v4, Lcom/metamoji/df/model/IModel;

    .line 113
    invoke-interface {v4}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "attachment"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 114
    invoke-virtual {p0, v0, v4, v3, p3}, Lcom/metamoji/cv/xml/attachments/CvAttachmentsOutgoingSubconverter;->generateAttachmentElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    goto :goto_1

    .line 119
    :cond_3
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 80
    const-string v0, "attachments"

    return-object v0
.end method

.method makeExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 131
    const-string v0, "image/jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const-string p1, "jpg"

    return-object p1

    .line 133
    :cond_0
    const-string v0, "application/pdf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 134
    const-string p1, "pdf"

    return-object p1

    .line 135
    :cond_1
    const-string v0, "image/png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 136
    const-string p1, "png"

    return-object p1

    .line 137
    :cond_2
    const-string v0, "text/xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 138
    const-string p1, "xml"

    return-object p1

    .line 139
    :cond_3
    const-string v0, "text/plain"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    .line 140
    const-string p1, "txt"

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method
