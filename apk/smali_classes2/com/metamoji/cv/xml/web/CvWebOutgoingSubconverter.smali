.class public Lcom/metamoji/cv/xml/web/CvWebOutgoingSubconverter;
.super Lcom/metamoji/cv/xml/image/CvImageOutgoingSubconverter;
.source "CvWebOutgoingSubconverter.java"


# instance fields
.field private _rootURI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/metamoji/cv/xml/image/CvImageOutgoingSubconverter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/metamoji/cv/CvConvertItem;)Z
    .locals 3

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
    const-string v1, "web"

    const-string v2, "xml"

    invoke-virtual {v0, p1, v1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->fillOutgoingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 4

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/metamoji/cv/xml/web/CvWebOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    .line 69
    invoke-static {}, Lcom/metamoji/cv/xml/XmlUtils;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 72
    iget-object v2, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    .line 75
    const-string v3, "maskQCurvePath"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    const-string v3, "http://xmlns.metamoji.com/noteanytime/web/2.0"

    iput-object v3, p0, Lcom/metamoji/cv/xml/web/CvWebOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    goto :goto_0

    .line 78
    :cond_0
    const-string v3, "http://xmlns.metamoji.com/noteanytime/web/1.0"

    iput-object v3, p0, Lcom/metamoji/cv/xml/web/CvWebOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    .line 81
    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lcom/metamoji/cv/xml/web/CvWebOutgoingSubconverter;->generateWebElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 83
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object p1

    .line 84
    invoke-static {v1, p1}, Lcom/metamoji/cv/xml/XmlUtils;->saveXMLFile(Lorg/w3c/dom/Document;Ljava/io/File;)Z

    return-void
.end method

.method generateWebElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/metamoji/cv/xml/web/CvWebOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    const-string v1, "web"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/metamoji/cv/xml/web/CvWebOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/metamoji/cv/xml/web/CvWebOutgoingSubconverter;->generateImageElementBaseContent(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;)V

    .line 106
    iget-object p3, p0, Lcom/metamoji/cv/xml/web/CvWebOutgoingSubconverter;->_rootURI:Ljava/lang/String;

    const-string v1, "url"

    invoke-interface {p1, p3, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p3

    .line 107
    const-string v1, "requestURL"

    invoke-static {p3, p2, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addTextNode(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    .line 108
    invoke-interface {v0, p3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 111
    invoke-static {p2}, Lcom/metamoji/cv/CvConverterUtils;->loadAdditionalsPropertyFromModel(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 113
    invoke-static {p1, p2}, Lcom/metamoji/cv/CvConverterUtils;->generateAdditionalsElement(Lorg/w3c/dom/Document;Ljava/util/Map;)Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 116
    :cond_0
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 92
    const-string v0, "$web"

    return-object v0
.end method
