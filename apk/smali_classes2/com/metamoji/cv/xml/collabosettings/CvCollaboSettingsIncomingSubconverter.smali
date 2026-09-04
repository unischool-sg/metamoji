.class public Lcom/metamoji/cv/xml/collabosettings/CvCollaboSettingsIncomingSubconverter;
.super Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter;
.source "CvCollaboSettingsIncomingSubconverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter;-><init>()V

    return-void
.end method

.method private parseSendingValue(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 8

    .line 109
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    .line 110
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 111
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    .line 112
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 113
    instance-of v4, v3, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_5

    .line 114
    check-cast v3, Lorg/w3c/dom/Element;

    .line 115
    const-string v4, "sending-data"

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 118
    const-string v4, "ref"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 124
    :cond_0
    new-instance v5, Ljava/io/File;

    iget-object v6, p3, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->directory:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    new-instance v6, Lcom/metamoji/cm/Blob;

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->loadFileInBuffer(Ljava/io/File;)[B

    move-result-object v7

    invoke-static {v5}, Lcom/metamoji/noteanytime/cm/CmMimeType;->getMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 126
    invoke-virtual {v6}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_1

    .line 127
    const-string v3, "[WARN] sending data is not found - {0}"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 130
    :cond_1
    const-string v4, "application/octet-stream"

    invoke-virtual {v6, v4}, Lcom/metamoji/cm/Blob;->setMimeType(Ljava/lang/String;)V

    .line 132
    const-string v4, "shareSendingData"

    invoke-interface {v0, v4}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    .line 133
    const-string v5, "data"

    invoke-interface {v4, v5, v6}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    .line 136
    const-string v5, "send-back"

    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 138
    const-string v6, "true"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 139
    const-string v6, "sendBack"

    invoke-interface {v4, v6, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 142
    :cond_2
    const-string v5, "rip-off-size"

    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 144
    const-string v6, "ripOffSize"

    invoke-interface {v4, v6, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_3
    const-string v5, "booth"

    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 150
    const-string v5, "boothID"

    invoke-interface {v4, v5, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_4
    invoke-interface {p2, v4}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 2

    .line 65
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    instance-of v0, v0, Lcom/metamoji/cv/xml/CvAtCollaboConvertContext;

    if-eqz v0, :cond_0

    .line 66
    invoke-super {p0, p1}, Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter;->convert(Lcom/metamoji/cv/CvConvertItem;)V

    .line 67
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    iget-object v0, v0, Lcom/metamoji/cv/CvConvertContext;->options:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    iget-object v0, v0, Lcom/metamoji/cv/CvConvertContext;->options:Ljava/util/Map;

    const-string v1, "ProcessCollaboSettingsDelegate"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cv/xml/ICvProcessCollaboSettings;

    if-eqz v0, :cond_0

    .line 70
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p1}, Lcom/metamoji/cv/xml/ICvProcessCollaboSettings;->processCollaboSettings(Lcom/metamoji/df/model/IModel;)V

    :cond_0
    return-void
.end method

.method public namespaceURI()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "http://xmlns.metamoji.com/noteanytime/sharesettings/1.0"

    return-object v0
.end method

.method protected parseValueElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 3

    .line 80
    const-string v0, "key"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    const-string v1, "received"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v1

    .line 85
    const-string v2, "map-value"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    const-string v2, "map"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 87
    invoke-virtual {p0, p1, v1, p3}, Lcom/metamoji/cv/xml/collabosettings/CvCollaboSettingsIncomingSubconverter;->parseChildValues(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 88
    invoke-interface {p2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 92
    :cond_0
    const-string v1, "sending"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v1

    .line 94
    const-string v2, "array-value"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    const-string v2, "node"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 96
    invoke-direct {p0, p1, v1, p3}, Lcom/metamoji/cv/xml/collabosettings/CvCollaboSettingsIncomingSubconverter;->parseSendingValue(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 97
    invoke-interface {p2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 102
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/cv/xml/valuelist/CvValueListIncomingSubconverter;->parseValueElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    return-void
.end method

.method public targetFilePrefix()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "sharesettings"

    return-object v0
.end method

.method public targetModelType()Ljava/lang/String;
    .locals 1

    .line 35
    const-string v0, "MMJNsShareSettings"

    return-object v0
.end method

.method public targetModelVersion()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
