.class public Lcom/metamoji/cv/xml/image/CvImageIncomingSubconverter;
.super Ljava/lang/Object;
.source "CvImageIncomingSubconverter.java"

# interfaces
.implements Lcom/metamoji/cv/ICvSubconverter;


# instance fields
.field private _rootURI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/metamoji/cv/CvConvertItem;)Z
    .locals 2

    .line 43
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    const-class v1, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 48
    :cond_0
    const-string v1, "$image"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->fillIncomingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 8

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/metamoji/cv/xml/image/CvImageIncomingSubconverter;->_rootURI:Ljava/lang/String;

    .line 68
    iget-object v1, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    check-cast v1, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    .line 70
    iget-object v2, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object v2

    .line 72
    invoke-static {v2}, Lcom/metamoji/cv/xml/XmlUtils;->loadXMLFile(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v2

    const/4 v4, 0x2

    .line 74
    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "http://xmlns.metamoji.com/noteanytime/image/1.0"

    aput-object v6, v5, v3

    const/4 v6, 0x1

    const-string v7, "http://xmlns.metamoji.com/noteanytime/image/2.0"

    aput-object v7, v5, v6

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v5, v3

    .line 75
    const-string v6, "image"

    invoke-static {v2, v6, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 77
    iput-object v0, p0, Lcom/metamoji/cv/xml/image/CvImageIncomingSubconverter;->_rootURI:Ljava/lang/String;

    move-object v0, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move-object v0, v6

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 87
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {p0, v0, p1, v1}, Lcom/metamoji/cv/xml/image/CvImageIncomingSubconverter;->parseImageElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    return-void

    .line 84
    :cond_2
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "CV0029"

    const-string v1, "not a image data file."

    invoke-direct {p1, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 95
    const-string v0, "image"

    return-object v0
.end method

.method parseImageElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/metamoji/cv/xml/image/CvImageIncomingSubconverter;->_rootURI:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/metamoji/cv/xml/image/CvImageIncomingSubconverter;->parseImageElementBaseContent(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;)V

    .line 110
    invoke-static {p1}, Lcom/metamoji/cv/CvConverterUtils;->childAdditionalsElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 112
    invoke-static {p1}, Lcom/metamoji/cv/CvConverterUtils;->parseAdditionalsElement(Lorg/w3c/dom/Element;)Ljava/util/Map;

    move-result-object p1

    .line 113
    invoke-static {p1, p2}, Lcom/metamoji/cv/CvConverterUtils;->saveAdditionalsProperty(Ljava/util/Map;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    .line 116
    :cond_0
    invoke-static {p2}, Lcom/metamoji/un/image/UnImageUnit;->updateModelVersion(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method protected parseImageElementBaseContent(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;)V
    .locals 1

    .line 129
    const-string p3, "unitId"

    const-string v0, "unit-id"

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {p1, p2, p4}, Lcom/metamoji/cv/CvConverterUtils;->parseGeometricPropsElementFromParent(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)Z

    .line 135
    const-string p3, "image-data"

    invoke-static {p1, p3, p4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 138
    const-string p3, "imageTicket"

    const-string p4, "attachment-ticket"

    invoke-static {p1, p2, p3, p4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string p3, "maskOffsetX"

    invoke-static {p1, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string p3, "maskOffsetY"

    invoke-static {p1, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string p3, "maskWidth"

    invoke-static {p1, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string p3, "maskHeight"

    invoke-static {p1, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string p3, "maskQCurvePath"

    invoke-static {p1, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsPointArray(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string p3, "opacity"

    invoke-static {p1, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string p3, "shadow"

    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-static {p1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 148
    const-string p3, "true"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string p4, "hasShadow"

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    .line 149
    invoke-interface {p2, p4, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    return-void

    .line 150
    :cond_0
    const-string p3, "false"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 151
    invoke-interface {p2, p4, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
