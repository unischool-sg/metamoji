.class public Lcom/metamoji/cv/xml/survey/CvSurveyOutgoingSubConverter;
.super Ljava/lang/Object;
.source "CvSurveyOutgoingSubConverter.java"

# interfaces
.implements Lcom/metamoji/cv/ICvSubconverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private serializeValue(Ljava/lang/Object;Lorg/w3c/dom/Element;)V
    .locals 7

    .line 124
    const-string v0, "type"

    if-nez p1, :cond_0

    .line 125
    const-string p1, "null"

    invoke-interface {p2, v0, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 126
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 127
    const-string v1, "string"

    invoke-interface {p2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    .line 129
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    .line 130
    :cond_1
    instance-of v1, p1, Ljava/lang/Integer;

    const-string v2, "value"

    const-string v3, "number"

    if-nez v1, :cond_7

    instance-of v1, p1, Ljava/lang/Double;

    if-nez v1, :cond_7

    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_2

    goto/16 :goto_2

    .line 133
    :cond_2
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 135
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 136
    invoke-interface {p2, v0, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v2, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 138
    :cond_3
    instance-of v1, p1, Ljava/util/List;

    const-string v2, "item"

    const-string v3, "http://xmlns.metamoji.com/noteanytime/survey/1.0"

    const-string v4, "size"

    if-eqz v1, :cond_4

    .line 140
    check-cast p1, Ljava/util/List;

    .line 141
    const-string v1, "array"

    invoke-interface {p2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v4, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 144
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1, v3, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 145
    invoke-direct {p0, v0, v1}, Lcom/metamoji/cv/xml/survey/CvSurveyOutgoingSubConverter;->serializeValue(Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    .line 146
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 148
    :cond_4
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_6

    .line 150
    check-cast p1, Ljava/util/Map;

    .line 151
    const-string v1, "map"

    invoke-interface {p2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v4, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 155
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 156
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    invoke-interface {v5, v3, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 157
    const-string v6, "key"

    invoke-interface {v5, v6, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0, v4, v5}, Lcom/metamoji/cv/xml/survey/CvSurveyOutgoingSubConverter;->serializeValue(Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    .line 159
    invoke-interface {p2, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_5
    return-void

    .line 163
    :cond_6
    const-string v1, "unknown"

    invoke-interface {p2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "detail"

    invoke-interface {p2, v0, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 131
    :cond_7
    :goto_2
    invoke-interface {p2, v0, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v2, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

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
    const-string v1, "survey"

    const-string v2, "xml"

    invoke-virtual {v0, p1, v1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->fillOutgoingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 3

    .line 63
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    .line 65
    invoke-static {}, Lcom/metamoji/cv/xml/XmlUtils;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 67
    iget-object v2, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {p0, v1, v2}, Lcom/metamoji/cv/xml/survey/CvSurveyOutgoingSubConverter;->generateSurveyElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;)V

    .line 69
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object p1

    .line 70
    invoke-static {v1, p1}, Lcom/metamoji/cv/xml/XmlUtils;->saveXMLFile(Lorg/w3c/dom/Document;Ljava/io/File;)Z

    return-void
.end method

.method generateSurveyElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 87
    const-string v0, "http://xmlns.metamoji.com/noteanytime/survey/1.0"

    const-string v1, "survey"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 89
    invoke-virtual {p0, v0, p2}, Lcom/metamoji/cv/xml/survey/CvSurveyOutgoingSubConverter;->generateSurveyElementBaseContent(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;)V

    .line 91
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method protected generateSurveyElementBaseContent(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 102
    const-string v0, "unitId"

    const-string v1, "unit-id"

    invoke-static {p1, p2, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "http://xmlns.metamoji.com/noteanytime/survey/1.0"

    invoke-static {p1, p2, v0}, Lcom/metamoji/cv/CvConverterUtils;->generateGeometricPropsElementFromModel(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    .line 116
    const-string v1, "value"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 118
    invoke-static {p1, v1, v0}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 119
    invoke-direct {p0, p2, p1}, Lcom/metamoji/cv/xml/survey/CvSurveyOutgoingSubConverter;->serializeValue(Ljava/lang/Object;Lorg/w3c/dom/Element;)V

    :cond_0
    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 78
    const-string v0, "$surveyunit"

    return-object v0
.end method
