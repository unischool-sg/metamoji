.class public Lcom/metamoji/cv/xml/video/CvVideoIncomingSubconverter;
.super Ljava/lang/Object;
.source "CvVideoIncomingSubconverter.java"

# interfaces
.implements Lcom/metamoji/cv/ICvSubconverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseVideoElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 6

    .line 94
    const-string v0, "unitId"

    const-string v1, "unit-id"

    invoke-static {p1, p2, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "http://xmlns.metamoji.com/noteanytime/video/1.0"

    invoke-static {p1, p2, v0}, Lcom/metamoji/cv/CvConverterUtils;->parseGeometricPropsElementFromParent(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)Z

    .line 100
    const-string v1, "video-data"

    invoke-static {p1, v1, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    const-string v2, "ticket"

    const-string v3, "dataTicket"

    invoke-static {v1, p2, v3, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-interface {p2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 107
    invoke-static {v1, p2, p3, v2}, Lcom/metamoji/cv/xml/MediaFiles/CvMediaFilesIncomingSubconverter;->parseMediaFileElementForVideoUnit(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;)V

    .line 113
    :cond_0
    const-string p3, "unit-props"

    invoke-static {p1, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 116
    const-string v1, "thumbnailTicket"

    const-string v2, "thumbnail-ticket"

    invoke-static {p3, p2, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v1, "thumbnailTime"

    const-string v2, "thumbnail-time"

    invoke-static {p3, p2, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v1, Lcom/metamoji/cv/xml/video/CvVideoIncomingSubconverter$1;

    invoke-direct {v1, p0, p2}, Lcom/metamoji/cv/xml/video/CvVideoIncomingSubconverter$1;-><init>(Lcom/metamoji/cv/xml/video/CvVideoIncomingSubconverter;Lcom/metamoji/df/model/IModel;)V

    const-string v2, "isMuted"

    const-string v3, "is-muted"

    invoke-static {p3, p2, v2, v3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Incoming$IChecker;)V

    .line 135
    new-instance v1, Lcom/metamoji/cv/xml/video/CvVideoIncomingSubconverter$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/metamoji/cv/xml/video/CvVideoIncomingSubconverter$2;-><init>(Lcom/metamoji/cv/xml/video/CvVideoIncomingSubconverter;Lcom/metamoji/df/model/IModel;Lorg/w3c/dom/Element;)V

    const-string v2, "stillMode"

    const-string v3, "still-mode"

    invoke-static {p3, p2, v2, v3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Incoming$IChecker;)V

    .line 156
    :cond_1
    const-string p3, "markers"

    invoke-static {p1, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 158
    const-string v1, "marker"

    invoke-static {p3, v1, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 159
    invoke-interface {p3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_4

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 161
    invoke-interface {p3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 162
    invoke-interface {p3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 163
    check-cast v3, Lorg/w3c/dom/Element;

    const-string v4, "id"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 164
    const-string v5, "time"

    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 166
    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p3

    if-lez p3, :cond_4

    .line 171
    invoke-static {p2}, Lcom/metamoji/un/video/UnVideoUnit;->createMarkerModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p3

    .line 172
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 173
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-interface {p3, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_1

    .line 180
    :cond_4
    invoke-static {p1}, Lcom/metamoji/cv/CvConverterUtils;->childAdditionalsElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 182
    invoke-static {p1}, Lcom/metamoji/cv/CvConverterUtils;->parseAdditionalsElement(Lorg/w3c/dom/Element;)Ljava/util/Map;

    move-result-object p1

    .line 183
    invoke-static {p1, p2}, Lcom/metamoji/cv/CvConverterUtils;->saveAdditionalsProperty(Ljava/util/Map;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    :cond_5
    return-void
.end method


# virtual methods
.method public accept(Lcom/metamoji/cv/CvConvertItem;)Z
    .locals 2

    .line 44
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    const-class v1, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 49
    :cond_0
    const-string v1, "$video"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->fillIncomingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 4

    .line 68
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    .line 70
    iget-object v1, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object v1

    .line 72
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->loadXMLFile(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 73
    const-string v2, "video"

    const-string v3, "http://xmlns.metamoji.com/noteanytime/video/1.0"

    invoke-static {v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    invoke-direct {p0, v1, p1, v0}, Lcom/metamoji/cv/xml/video/CvVideoIncomingSubconverter;->parseVideoElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    return-void

    .line 77
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "CV0040"

    const-string v1, "not a video data file."

    invoke-direct {p1, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 89
    const-string v0, "video"

    return-object v0
.end method
