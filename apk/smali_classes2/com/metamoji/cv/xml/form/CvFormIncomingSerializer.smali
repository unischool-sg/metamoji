.class public Lcom/metamoji/cv/xml/form/CvFormIncomingSerializer;
.super Ljava/lang/Object;
.source "CvFormIncomingSerializer.java"


# instance fields
.field m_modelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/cv/xml/form/CvFormIncomingSerializer;->m_modelMap:Ljava/util/HashMap;

    return-void
.end method

.method private parseItemElement(Lorg/w3c/dom/Element;Ljava/util/List;Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/df/model/IModelManager;",
            "Lcom/metamoji/cv/xml/CvDirectoryConvertContext;",
            ")V"
        }
    .end annotation

    .line 151
    const-string v0, "type"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 155
    :cond_0
    const-string v1, "model"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "http://xmlns.metamoji.com/noteanytime/serializer/1.0"

    const/4 v4, 0x0

    const-string v5, "blank"

    if-eqz v2, :cond_3

    .line 156
    invoke-static {p1, v1, v3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 157
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const-string v1, "Model XML Element invalid."

    if-lez v0, :cond_2

    .line 158
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    :goto_0
    if-ge v4, v0, :cond_c

    .line 159
    invoke-interface {p1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 160
    check-cast v2, Lorg/w3c/dom/Element;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, p3, p4}, Lcom/metamoji/cv/xml/form/CvFormIncomingSerializer;->parseModelElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 162
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 164
    :cond_1
    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 165
    invoke-interface {p3, v5}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 169
    :cond_2
    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 170
    invoke-interface {p3, v5}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 172
    :cond_3
    const-string v1, "model-reference"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 173
    invoke-static {p1, v1, v3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 174
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p4

    if-lez p4, :cond_5

    .line 175
    invoke-interface {p1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    .line 176
    check-cast p1, Lorg/w3c/dom/Element;

    const-string p4, "id"

    invoke-interface {p1, p4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 178
    iget-object p3, p0, Lcom/metamoji/cv/xml/form/CvFormIncomingSerializer;->m_modelMap:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/model/IModel;

    .line 179
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 181
    :cond_4
    const-string p1, "Reference Model not exist."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 182
    invoke-interface {p3, v5}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 185
    :cond_5
    const-string p1, "Reference Model XML Element not exist."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 186
    invoke-interface {p3, v5}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 188
    :cond_6
    const-string v1, "string"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 189
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 192
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 194
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 197
    :cond_7
    const-string p1, ""

    :goto_2
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 198
    :cond_8
    const-string v1, "number"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 199
    const-string p3, "value"

    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    const-wide/16 p3, 0x0

    .line 201
    invoke-static {p1, p3, p4}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;D)D

    move-result-wide p3

    .line 202
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 204
    :cond_9
    const-string p1, "value attribute no exist."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 205
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 207
    :cond_a
    const-string v1, "array"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 208
    const-string v0, "item"

    invoke-static {p1, v0, v3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 209
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_c

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    :goto_3
    if-ge v4, v1, :cond_b

    .line 212
    invoke-interface {p1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-direct {p0, v2, v0, p3, p4}, Lcom/metamoji/cv/xml/form/CvFormIncomingSerializer;->parseItemElement(Lorg/w3c/dom/Element;Ljava/util/List;Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 214
    :cond_b
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_4
    return-void

    .line 217
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unknown property type type:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    return-void
.end method

.method private parsePropElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 6

    .line 90
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 95
    :cond_0
    const-string v1, "type"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 99
    :cond_1
    const-string v2, "model"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "http://xmlns.metamoji.com/noteanytime/serializer/1.0"

    if-eqz v3, :cond_3

    .line 100
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    .line 101
    invoke-static {p1, v2, v5}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 102
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_a

    .line 103
    invoke-interface {p1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    .line 104
    check-cast p1, Lorg/w3c/dom/Element;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1, p3}, Lcom/metamoji/cv/xml/form/CvFormIncomingSerializer;->parseModelElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 106
    invoke-interface {p2, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 108
    :cond_2
    const-string p1, "Model XML Element invalid."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    return-void

    .line 111
    :cond_3
    const-string v2, "model-reference"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 112
    invoke-static {p1, v2, v5}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 113
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p3

    :goto_0
    if-ge v4, p3, :cond_a

    .line 114
    invoke-interface {p1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 115
    check-cast v1, Lorg/w3c/dom/Element;

    const-string v2, "id"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 117
    iget-object v2, p0, Lcom/metamoji/cv/xml/form/CvFormIncomingSerializer;->m_modelMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/model/IModel;

    .line 118
    invoke-interface {p2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 121
    :cond_5
    const-string v2, "string"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 122
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 125
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 130
    :cond_6
    const-string p1, ""

    :goto_1
    invoke-interface {p2, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 131
    :cond_7
    const-string v2, "number"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 132
    const-string p3, "value"

    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    const-wide/16 v1, 0x0

    .line 134
    invoke-static {p1, v1, v2}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;D)D

    move-result-wide v1

    .line 135
    invoke-interface {p2, v0, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-void

    .line 137
    :cond_8
    const-string v2, "array"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 138
    const-string v1, "item"

    invoke-static {p1, v1, v5}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 139
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_a

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    :goto_2
    if-ge v4, v2, :cond_9

    .line 142
    invoke-interface {p1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 143
    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v5

    invoke-direct {p0, v3, v1, v5, p3}, Lcom/metamoji/cv/xml/form/CvFormIncomingSerializer;->parseItemElement(Lorg/w3c/dom/Element;Ljava/util/List;Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 145
    :cond_9
    invoke-interface {p2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    :cond_a
    :goto_3
    return-void
.end method


# virtual methods
.method public parseModelElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lcom/metamoji/df/model/IModel;
    .locals 7

    .line 30
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "model"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 34
    :cond_0
    const-string v0, "type"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    if-eqz p2, :cond_2

    .line 41
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 42
    const-string v3, "!type"

    invoke-interface {p2, v0, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_2
    invoke-interface {p3, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    .line 48
    :cond_3
    :goto_0
    const-string v0, "version"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 50
    invoke-static {v0, v3}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v0

    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 53
    :cond_4
    const-string v0, "id"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 55
    iget-object v4, p0, Lcom/metamoji/cv/xml/form/CvFormIncomingSerializer;->m_modelMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_5
    const-string v0, "children"

    const-string v4, "http://xmlns.metamoji.com/noteanytime/serializer/1.0"

    invoke-static {p1, v0, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 60
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_7

    .line 61
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 62
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-static {v0, v1, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_7

    .line 64
    invoke-interface {v0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 65
    check-cast v6, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v6, v2, p3, p4}, Lcom/metamoji/cv/xml/form/CvFormIncomingSerializer;->parseModelElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 67
    invoke-interface {p2, v6}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    goto :goto_2

    .line 69
    :cond_6
    const-string v6, "Model XML Element invalid."

    invoke-static {v6}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 75
    :cond_7
    const-string p3, "properties"

    invoke-static {p1, p3, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 76
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p3

    if-lez p3, :cond_8

    .line 77
    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    const-string p3, "property"

    invoke-static {p1, p3, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 78
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p3

    if-lez p3, :cond_8

    .line 79
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p3

    :goto_3
    if-ge v3, p3, :cond_8

    .line 80
    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 81
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p2, p4}, Lcom/metamoji/cv/xml/form/CvFormIncomingSerializer;->parsePropElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    return-object p2
.end method
