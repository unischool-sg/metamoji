.class public Lcom/metamoji/cv/xml/partmanifest/CvPartManifestIncomingSubconverter;
.super Ljava/lang/Object;
.source "CvPartManifestIncomingSubconverter.java"

# interfaces
.implements Lcom/metamoji/cv/ICvSubconverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/metamoji/cv/CvConvertItem;)Z
    .locals 2

    .line 46
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    const-class v1, Lcom/metamoji/cv/xml/CvPartConvertContext;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cv/xml/CvPartConvertContext;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 52
    :cond_0
    const-string v1, "part"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/cv/xml/CvPartConvertContext;->fillIncomingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 4

    .line 71
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    check-cast v0, Lcom/metamoji/cv/xml/CvPartConvertContext;

    .line 73
    iget-object v1, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cv/xml/CvPartConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object v1

    .line 75
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->loadXMLFile(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 76
    const-string v2, "manifest"

    const-string v3, "http://xmlns.metamoji.com/noteanytime/partmanifest/1.0"

    invoke-static {v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 84
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {p0, v1, p1, v0}, Lcom/metamoji/cv/xml/partmanifest/CvPartManifestIncomingSubconverter;->parseManifestElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvPartConvertContext;)V

    return-void

    .line 81
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "CV0031"

    const-string v1, "not a part manifest file."

    invoke-direct {p1, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 92
    const-string v0, "manifest"

    return-object v0
.end method

.method parseAttachmentsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvPartConvertContext;)V
    .locals 1

    .line 208
    const-string v0, "ref"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-static {p1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p3, Lcom/metamoji/cv/xml/CvPartConvertContext;->converter:Lcom/metamoji/cv/CvModelConverter;

    invoke-virtual {v0, p1, p3}, Lcom/metamoji/cv/CvModelConverter;->importModels(Ljava/lang/Object;Lcom/metamoji/cv/CvConvertContext;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 214
    const-string p3, "attachments"

    invoke-interface {p2, p3, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 211
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "CV0035"

    const-string p3, "ref attribute instanceof not found in attachments element."

    invoke-direct {p1, p2, p3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method parseCreateDateElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 184
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-static {p1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    :try_start_0
    invoke-static {p1}, Lcom/metamoji/cm/TimeUtils;->isoStringToUnixTimestamp(Ljava/lang/String;)D

    move-result-wide v0

    .line 190
    const-string p1, "createDate"

    invoke-interface {p2, p1, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 194
    const-string p2, "time string error."

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method parseManifestElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvPartConvertContext;)V
    .locals 4

    .line 103
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    .line 107
    const-string v1, "version"

    invoke-static {p1, p2, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsModelVersion(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 111
    invoke-interface {p2, v2}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 115
    :cond_0
    const-string v1, "partmeta"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 116
    const-string v1, "partMetaData"

    invoke-interface {p2, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 120
    const-string v1, "title"

    const-string v3, "http://xmlns.metamoji.com/noteanytime/partmanifest/1.0"

    invoke-static {p1, v1, v3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {p0, v1, v0}, Lcom/metamoji/cv/xml/partmanifest/CvPartManifestIncomingSubconverter;->parseTitleElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;)V

    .line 126
    :cond_1
    const-string v1, "create-date"

    invoke-static {p1, v1, v3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 128
    invoke-virtual {p0, v1, v0}, Lcom/metamoji/cv/xml/partmanifest/CvPartManifestIncomingSubconverter;->parseCreateDateElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;)V

    .line 132
    :cond_2
    const-string v0, "attachments"

    invoke-static {p1, v0, v3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 134
    invoke-virtual {p0, v0, p2, p3}, Lcom/metamoji/cv/xml/partmanifest/CvPartManifestIncomingSubconverter;->parseAttachmentsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvPartConvertContext;)V

    .line 138
    :cond_3
    const-string v0, "part"

    invoke-static {p1, v0, v3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 143
    invoke-virtual {p0, v0, p2, p3}, Lcom/metamoji/cv/xml/partmanifest/CvPartManifestIncomingSubconverter;->parsePartElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvPartConvertContext;)V

    .line 146
    instance-of v0, p3, Lcom/metamoji/cv/xml/CvPartMetaConvertContext;

    if-eqz v0, :cond_4

    .line 148
    const-string v0, "thumbnail"

    invoke-static {p1, v0, v3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 151
    const-string v1, "ref"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-static {p1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 155
    invoke-virtual {p3, p1, v2}, Lcom/metamoji/cv/xml/CvPartConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object p1

    .line 156
    new-instance p3, Lcom/metamoji/cm/Blob;

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadFileInBuffer(Ljava/io/File;)[B

    move-result-object v1

    invoke-static {p1}, Lcom/metamoji/noteanytime/cm/CmMimeType;->getMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v1, p1}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 157
    invoke-interface {p2, v0, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    :cond_4
    return-void

    .line 141
    :cond_5
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "CV0034"

    const-string p3, "part element instanceof not found."

    invoke-direct {p1, p2, p3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method parsePartElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvPartConvertContext;)V
    .locals 1

    .line 227
    const-string v0, "ref"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 228
    invoke-static {p1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p3, Lcom/metamoji/cv/xml/CvPartConvertContext;->converter:Lcom/metamoji/cv/CvModelConverter;

    invoke-virtual {v0, p1, p3}, Lcom/metamoji/cv/CvModelConverter;->importModels(Ljava/lang/Object;Lcom/metamoji/cv/CvConvertContext;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 233
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p3

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result p1

    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result p2

    invoke-interface {p3, p1, p2}, Lcom/metamoji/df/model/IModelManager;->addChildModel(II)V

    return-void

    .line 230
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "CV0036"

    const-string p3, "ref attribute instanceof not found in part element."

    invoke-direct {p1, p2, p3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method parseTitleElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 172
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    .line 173
    invoke-static {p1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    const-string v0, "title"

    invoke-interface {p2, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
