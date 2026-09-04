.class public Lcom/metamoji/cv/xml/web/CvWebIncomingSubconverter;
.super Lcom/metamoji/cv/xml/image/CvImageIncomingSubconverter;
.source "CvWebIncomingSubconverter.java"


# instance fields
.field private _rootURI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/metamoji/cv/xml/image/CvImageIncomingSubconverter;-><init>()V

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
    const-string v1, "$web"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->fillIncomingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 8

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/metamoji/cv/xml/web/CvWebIncomingSubconverter;->_rootURI:Ljava/lang/String;

    .line 69
    iget-object v1, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    check-cast v1, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    .line 71
    iget-object v2, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object v2

    .line 73
    invoke-static {v2}, Lcom/metamoji/cv/xml/XmlUtils;->loadXMLFile(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v2

    const/4 v4, 0x2

    .line 75
    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "http://xmlns.metamoji.com/noteanytime/web/1.0"

    aput-object v6, v5, v3

    const/4 v6, 0x1

    const-string v7, "http://xmlns.metamoji.com/noteanytime/web/2.0"

    aput-object v7, v5, v6

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v5, v3

    .line 76
    const-string v6, "web"

    invoke-static {v2, v6, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 78
    iput-object v0, p0, Lcom/metamoji/cv/xml/web/CvWebIncomingSubconverter;->_rootURI:Ljava/lang/String;

    move-object v0, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move-object v0, v6

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 88
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {p0, v0, p1, v1}, Lcom/metamoji/cv/xml/web/CvWebIncomingSubconverter;->parseWebElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    return-void

    .line 85
    :cond_2
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "CV0045"

    const-string v1, "not a web data file."

    invoke-direct {p1, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 96
    const-string v0, "web"

    return-object v0
.end method

.method parseWebElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/metamoji/cv/xml/web/CvWebIncomingSubconverter;->_rootURI:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/metamoji/cv/xml/web/CvWebIncomingSubconverter;->parseImageElementBaseContent(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/lang/String;)V

    .line 111
    const-string p3, "url"

    iget-object v0, p0, Lcom/metamoji/cv/xml/web/CvWebIncomingSubconverter;->_rootURI:Ljava/lang/String;

    invoke-static {p1, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 113
    invoke-interface {p3}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p3

    const-class v0, Lorg/w3c/dom/Text;

    invoke-static {p3, v0}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/w3c/dom/Text;

    if-eqz p3, :cond_0

    .line 115
    const-string v0, "requestURL"

    invoke-interface {p3}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, v0, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    invoke-static {p1}, Lcom/metamoji/cv/CvConverterUtils;->childAdditionalsElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 122
    invoke-static {p1}, Lcom/metamoji/cv/CvConverterUtils;->parseAdditionalsElement(Lorg/w3c/dom/Element;)Ljava/util/Map;

    move-result-object p1

    .line 123
    invoke-static {p1, p2}, Lcom/metamoji/cv/CvConverterUtils;->saveAdditionalsProperty(Ljava/util/Map;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    .line 126
    :cond_1
    invoke-static {p2}, Lcom/metamoji/un/web/UnWebUnit;->updateModelVersion(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method
