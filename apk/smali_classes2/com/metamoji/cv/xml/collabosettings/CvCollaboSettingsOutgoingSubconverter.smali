.class public Lcom/metamoji/cv/xml/collabosettings/CvCollaboSettingsOutgoingSubconverter;
.super Lcom/metamoji/cv/xml/valuelist/CvValueListOutgoingSubconverter;
.source "CvCollaboSettingsOutgoingSubconverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/metamoji/cv/xml/valuelist/CvValueListOutgoingSubconverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 1

    .line 57
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    instance-of v0, v0, Lcom/metamoji/cv/xml/CvAtCollaboConvertContext;

    if-eqz v0, :cond_0

    .line 58
    invoke-super {p0, p1}, Lcom/metamoji/cv/xml/valuelist/CvValueListOutgoingSubconverter;->convert(Lcom/metamoji/cv/CvConvertItem;)V

    :cond_0
    return-void
.end method

.method generateSendingValueElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lorg/w3c/dom/Element;
    .locals 5

    .line 87
    invoke-virtual {p0}, Lcom/metamoji/cv/xml/collabosettings/CvCollaboSettingsOutgoingSubconverter;->namespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "array-value"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 89
    const-string v1, "key"

    invoke-interface {v0, v1, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_4

    .line 93
    invoke-virtual {p0}, Lcom/metamoji/cv/xml/collabosettings/CvCollaboSettingsOutgoingSubconverter;->namespaceURI()Ljava/lang/String;

    move-result-object p3

    const-string v1, "sending-data"

    invoke-interface {p1, p3, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p3

    .line 96
    const-string v1, "data"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {v1}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    .line 98
    new-instance v2, Lcom/metamoji/cv/CvConvertItem;

    invoke-direct {v2}, Lcom/metamoji/cv/CvConvertItem;-><init>()V

    .line 99
    const-string v3, "sending"

    const-string v4, "dat"

    invoke-virtual {p4, v2, v3, v4}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->fillOutgoingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v3, v2, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-virtual {p4, v3, v4}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object v3

    .line 101
    invoke-virtual {v1}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v1

    invoke-static {v3, v1}, Lcom/metamoji/cm/CmUtils;->saveBufferToFile(Ljava/io/File;[B)Z

    .line 102
    iget-object v1, v2, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    invoke-virtual {p4, v1}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePathRelative(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 103
    const-string v2, "ref"

    invoke-interface {p3, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    const-string v1, "sendBack"

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    const-string v1, "true"

    goto :goto_1

    :cond_1
    const-string v1, "false"

    :goto_1
    const-string v2, "send-back"

    invoke-interface {p3, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "ripOffSize"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 113
    const-string v2, "rip-off-size"

    invoke-interface {p3, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_2
    const-string v1, "boothID"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 120
    const-string v2, "booth"

    invoke-interface {p3, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_3
    invoke-interface {v0, p3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 125
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method protected generateValueElement(Lorg/w3c/dom/Document;Ljava/lang/Object;Ljava/lang/String;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lorg/w3c/dom/Element;
    .locals 3

    .line 67
    const-string v0, "received"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/metamoji/df/model/IModel;

    .line 69
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "map"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/metamoji/cv/xml/collabosettings/CvCollaboSettingsOutgoingSubconverter;->namespaceURI()Ljava/lang/String;

    move-result-object p2

    const-string v1, "map-value"

    invoke-interface {p1, p2, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 71
    invoke-virtual {p0, p1, v0, p4}, Lcom/metamoji/cv/xml/collabosettings/CvCollaboSettingsOutgoingSubconverter;->addChildValues(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 72
    const-string p2, "key"

    invoke-interface {p1, p2, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 74
    :cond_0
    const-string v0, "sending"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/metamoji/df/model/IModel;

    .line 76
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "node"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/metamoji/cv/xml/collabosettings/CvCollaboSettingsOutgoingSubconverter;->generateSendingValueElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lorg/w3c/dom/Element;

    move-result-object p1

    return-object p1

    .line 79
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/metamoji/cv/xml/valuelist/CvValueListOutgoingSubconverter;->generateValueElement(Lorg/w3c/dom/Document;Ljava/lang/Object;Ljava/lang/String;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lorg/w3c/dom/Element;

    move-result-object p1

    return-object p1
.end method

.method public namespaceURI()Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, "http://xmlns.metamoji.com/noteanytime/sharesettings/1.0"

    return-object v0
.end method

.method public targetExtension()Ljava/lang/String;
    .locals 1

    .line 36
    const-string v0, "xml"

    return-object v0
.end method

.method public targetFilePrefix()Ljava/lang/String;
    .locals 1

    .line 28
    const-string v0, "sharesettings"

    return-object v0
.end method

.method public targetModelType()Ljava/lang/String;
    .locals 1

    .line 52
    const-string v0, "MMJNsShareSettings"

    return-object v0
.end method
