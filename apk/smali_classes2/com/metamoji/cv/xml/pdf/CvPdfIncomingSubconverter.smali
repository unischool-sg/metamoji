.class public Lcom/metamoji/cv/xml/pdf/CvPdfIncomingSubconverter;
.super Ljava/lang/Object;
.source "CvPdfIncomingSubconverter.java"

# interfaces
.implements Lcom/metamoji/cv/ICvSubconverter;


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

    .line 41
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    const-class v1, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 46
    :cond_0
    const-string v1, "$pdf"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->fillIncomingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 4

    .line 64
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    .line 66
    iget-object v1, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object v1

    .line 68
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->loadXMLFile(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 69
    const-string v2, "pdf"

    const-string v3, "http://xmlns.metamoji.com/noteanytime/pdf/1.0"

    invoke-static {v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {p0, v1, p1, v0}, Lcom/metamoji/cv/xml/pdf/CvPdfIncomingSubconverter;->parsePdfElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    return-void

    .line 73
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "CV0040"

    const-string v1, "not a pdf data file."

    invoke-direct {p1, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 84
    const-string v0, "pdf"

    return-object v0
.end method

.method parsePdfElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 4

    const/4 p3, 0x1

    .line 95
    invoke-interface {p2, p3}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 98
    const-string v0, "unitId"

    const-string v1, "unit-id"

    invoke-static {p1, p2, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "pdf-data"

    const-string v1, "http://xmlns.metamoji.com/noteanytime/pdf/1.0"

    invoke-static {p1, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    const-string v2, "ticket"

    const-string v3, "attachment-ticket"

    invoke-static {v0, p2, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v2, "page"

    invoke-static {v0, p2, v2, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    const-string v0, "position"

    invoke-static {p1, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    const-string v2, "offsetX"

    const-string v3, "offset-x"

    invoke-static {v0, p2, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v2, "offsetY"

    const-string v3, "offset-y"

    invoke-static {v0, p2, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v2, "scale"

    invoke-static {v0, p2, v2, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v2, "orientation"

    invoke-static {v0, p2, v2, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_1
    const-string v0, "template"

    invoke-static {p1, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 119
    invoke-interface {p2, v0, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 123
    :cond_2
    invoke-static {p1}, Lcom/metamoji/cv/CvConverterUtils;->childAdditionalsElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 125
    invoke-static {p1}, Lcom/metamoji/cv/CvConverterUtils;->parseAdditionalsElement(Lorg/w3c/dom/Element;)Ljava/util/Map;

    move-result-object p1

    .line 126
    invoke-static {p1, p2}, Lcom/metamoji/cv/CvConverterUtils;->saveAdditionalsProperty(Ljava/util/Map;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    :cond_3
    return-void
.end method
