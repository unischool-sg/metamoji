.class public Lcom/metamoji/cv/xml/pdf/CvPdfOutgoingSubconverter;
.super Ljava/lang/Object;
.source "CvPdfOutgoingSubconverter.java"

# interfaces
.implements Lcom/metamoji/cv/ICvSubconverter;


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

    .line 40
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    const-class v1, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 45
    :cond_0
    const-string v1, "pdf"

    const-string v2, "xml"

    invoke-virtual {v0, p1, v1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->fillOutgoingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 3

    .line 62
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    .line 64
    invoke-static {}, Lcom/metamoji/cv/xml/XmlUtils;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 67
    iget-object v2, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    .line 68
    invoke-virtual {p0, v1, v2, v0}, Lcom/metamoji/cv/xml/pdf/CvPdfOutgoingSubconverter;->generatePdfElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 70
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object p1

    .line 71
    invoke-static {v1, p1}, Lcom/metamoji/cv/xml/XmlUtils;->saveXMLFile(Lorg/w3c/dom/Document;Ljava/io/File;)Z

    return-void
.end method

.method generatePdfElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 7

    .line 91
    const-string p3, "pdf"

    const-string v0, "http://xmlns.metamoji.com/noteanytime/pdf/1.0"

    invoke-interface {p1, v0, p3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 94
    const-string p3, "unitId"

    const-string v2, "unit-id"

    invoke-static {v1, p2, p3, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v5, "http://xmlns.metamoji.com/noteanytime/pdf/1.0"

    const-string v6, "attachment-ticket"

    const-string v3, "ticket"

    const-string v4, "pdf-data"

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addElementWithAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 99
    const-string p3, "page"

    invoke-static {p2, v2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    const-string p2, "offsetX"

    invoke-interface {v2, p2}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    const-string p3, "offsetY"

    invoke-interface {v2, p3}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 105
    const-string v3, "scale"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, "orientation"

    invoke-interface {v2, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 106
    const-string v5, "position"

    invoke-static {v1, v5, v0}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 108
    const-string v6, "offset-x"

    invoke-static {v5, v2, p2, v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string p2, "offset-y"

    invoke-static {v5, v2, p3, p2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {v5, v2, v3, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {v5, v2, v4, v4}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_1
    const-string p2, "template"

    invoke-interface {v2, p2}, Lcom/metamoji/df/model/IModel;->hasProperty(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 117
    invoke-static {v1, p2, v0}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 120
    :cond_2
    invoke-static {v2}, Lcom/metamoji/cv/CvConverterUtils;->loadAdditionalsPropertyFromModel(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 122
    invoke-static {p1, p2}, Lcom/metamoji/cv/CvConverterUtils;->generateAdditionalsElement(Lorg/w3c/dom/Document;Ljava/util/Map;)Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-interface {v1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 124
    :cond_3
    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 79
    const-string v0, "$pdf"

    return-object v0
.end method
