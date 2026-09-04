.class public Lcom/metamoji/cv/xml/image/CvImageOutgoingSubconverter;
.super Ljava/lang/Object;
.source "CvImageOutgoingSubconverter.java"

# interfaces
.implements Lcom/metamoji/cv/ICvSubconverter;


# instance fields
.field private _rootURI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
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
    const-string v1, "image"

    const-string v2, "xml"

    invoke-virtual {v0, p1, v1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->fillOutgoingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 4

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/metamoji/cv/xml/image/CvImageOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    .line 66
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    .line 68
    invoke-static {}, Lcom/metamoji/cv/xml/XmlUtils;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 71
    iget-object v2, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    .line 74
    const-string v3, "maskQCurvePath"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    const-string v3, "http://xmlns.metamoji.com/noteanytime/image/2.0"

    iput-object v3, p0, Lcom/metamoji/cv/xml/image/CvImageOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    goto :goto_0

    .line 77
    :cond_0
    const-string v3, "http://xmlns.metamoji.com/noteanytime/image/1.0"

    iput-object v3, p0, Lcom/metamoji/cv/xml/image/CvImageOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    .line 80
    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lcom/metamoji/cv/xml/image/CvImageOutgoingSubconverter;->generateImageElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 82
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object p1

    .line 83
    invoke-static {v1, p1}, Lcom/metamoji/cv/xml/XmlUtils;->saveXMLFile(Lorg/w3c/dom/Document;Ljava/io/File;)Z

    return-void
.end method

.method generateImageElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/metamoji/cv/xml/image/CvImageOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    const-string v1, "image"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/metamoji/cv/xml/image/CvImageOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/metamoji/cv/xml/image/CvImageOutgoingSubconverter;->generateImageElementBaseContent(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;)V

    .line 107
    invoke-static {p2}, Lcom/metamoji/cv/CvConverterUtils;->loadAdditionalsPropertyFromModel(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 109
    invoke-static {p1, p2}, Lcom/metamoji/cv/CvConverterUtils;->generateAdditionalsElement(Lorg/w3c/dom/Document;Ljava/util/Map;)Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 111
    :cond_0
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method protected generateImageElementBaseContent(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;)V
    .locals 7

    .line 124
    const-string p3, "unitId"

    const-string v0, "unit-id"

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {p1, p2, p4}, Lcom/metamoji/cv/CvConverterUtils;->generateGeometricPropsElementFromModel(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    .line 130
    const-string v4, "image-data"

    const-string v6, "attachment-ticket"

    const-string v3, "imageTicket"

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addElementWithAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 132
    const-string p2, "maskOffsetX"

    invoke-static {p1, v2, p2, p2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string p2, "maskOffsetY"

    invoke-static {p1, v2, p2, p2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string p2, "maskWidth"

    invoke-static {p1, v2, p2, p2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string p2, "maskHeight"

    invoke-static {p1, v2, p2, p2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string p2, "maskQCurvePath"

    invoke-static {p1, v2, p2, p2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string p2, "opacity"

    invoke-static {p1, v2, p2, p2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string p2, "hasShadow"

    const/4 p3, 0x1

    invoke-interface {v2, p2, p3}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 140
    const-string p2, "true"

    goto :goto_0

    :cond_0
    const-string p2, "false"

    :goto_0
    const-string p3, "shadow"

    invoke-interface {p1, p3, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 91
    const-string v0, "$image"

    return-object v0
.end method
