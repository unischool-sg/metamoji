.class public Lcom/metamoji/cv/CvConverterUtils;
.super Ljava/lang/Object;
.source "CvConverterUtils.java"


# static fields
.field public static final MMJCV_ADDITIONALS_ATTR_KEY:Ljava/lang/String; = "key"

.field public static final MMJCV_ADDITIONALS_ATTR_VALUE:Ljava/lang/String; = "value"

.field public static final MMJCV_ADDITIONALS_ELEMENT_ADDITIONAL:Ljava/lang/String; = "additional"

.field public static final MMJCV_ADDITIONALS_ELEMENT_ADDITIONALS:Ljava/lang/String; = "additionals"

.field public static final MMJCV_ADDITIONALS_MODEL_ADDITIONALS:Ljava/lang/String; = "additionals"

.field public static final MMJCV_ADDITIONALS_NAMESPACE_URI:Ljava/lang/String; = "http://xmlns.metamoji.com/noteanytime/additionals/1.0"

.field public static final MMJCV_ADDITIONALS_NAMESPACE_XMLNS:Ljava/lang/String; = "xmlns:prog=\'http://xmlns.metamoji.com/noteanytime/additionals/1.0\'"

.field public static final MMJCV_ADDITIONALS_PROPERTY_ADDITIONALS:Ljava/lang/String; = "additionals"

.field static final MMJCV_GEOMETRICPROPS_ATTR_CONTENT_SCALE:Ljava/lang/String; = "contentScale"

.field static final MMJCV_GEOMETRICPROPS_ATTR_HEIGHT:Ljava/lang/String; = "height"

.field static final MMJCV_GEOMETRICPROPS_ATTR_ROTATION:Ljava/lang/String; = "rotation"

.field static final MMJCV_GEOMETRICPROPS_ATTR_WIDTH:Ljava/lang/String; = "width"

.field static final MMJCV_GEOMETRICPROPS_ATTR_X:Ljava/lang/String; = "x"

.field static final MMJCV_GEOMETRICPROPS_ATTR_Y:Ljava/lang/String; = "y"

.field static final MMJCV_GEOMETRICPROPS_ELEMENT_GEOMETRIC_PROPS:Ljava/lang/String; = "geometric-props"

.field public static final XPATH_ADDITIONAL:Ljava/lang/String; = "./prog:additional"

.field public static final XPATH_ADDITIONALS:Ljava/lang/String; = "./prog:additionals"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static childAdditionalsElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;
    .locals 2

    .line 46
    const-string v0, "xmlns:prog=\'http://xmlns.metamoji.com/noteanytime/additionals/1.0\'"

    const-string v1, "./prog:additionals"

    invoke-interface {p0, v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 47
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 48
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateAdditionalsElement(Lorg/w3c/dom/Document;Ljava/util/Map;)Lorg/w3c/dom/Node;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/w3c/dom/Node;"
        }
    .end annotation

    .line 85
    const-string v0, "additionals"

    const-string v1, "http://xmlns.metamoji.com/noteanytime/additionals/1.0"

    invoke-interface {p0, v1, v0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 87
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 89
    const-string v3, "additional"

    invoke-interface {p0, v1, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 90
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "key"

    invoke-interface {v3, v5, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "value"

    invoke-interface {v3, v4, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static generateGeometricPropsElementFromModel(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 2

    .line 186
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 187
    const-string v1, "geometric-props"

    invoke-interface {v0, p2, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 189
    const-string v0, "x"

    invoke-static {p2, p1, v0, v0}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v0, "y"

    invoke-static {p2, p1, v0, v0}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "width"

    invoke-static {p2, p1, v0, v0}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v0, "height"

    invoke-static {p2, p1, v0, v0}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v0, "rotation"

    invoke-static {p2, p1, v0, v0}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v0, "contentScale"

    invoke-static {p2, p1, v0, v0}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-interface {p0, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public static imageExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 206
    const-string v0, "image/png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const-string p0, "png"

    return-object p0

    .line 208
    :cond_0
    const-string v0, "image/jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 209
    const-string p0, "jpg"

    return-object p0

    .line 211
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static imageMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 223
    const-string v0, "png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const-string p0, "image/png"

    return-object p0

    .line 225
    :cond_0
    const-string v0, "jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 226
    const-string p0, "image/jpeg"

    return-object p0

    .line 228
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static imageMimeTypeFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    .line 237
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 240
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 241
    invoke-static {p0}, Lcom/metamoji/cv/CvConverterUtils;->imageMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 243
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static loadAdditionalsPropertyFromModel(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    const-string v0, "additionals"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 124
    const-class v1, Lcom/metamoji/df/model/IModel;

    invoke-static {p0, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/model/IModel;

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    .line 129
    :cond_0
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object p0

    if-eq v0, p0, :cond_1

    return-object v2

    .line 133
    :cond_1
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object p0

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 135
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 136
    const-string v3, "!type"

    if-eq v3, v2, :cond_2

    .line 137
    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static parseAdditionalsElement(Lorg/w3c/dom/Element;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    const-string v0, "xmlns:prog=\'http://xmlns.metamoji.com/noteanytime/additionals/1.0\'"

    const-string v1, "./prog:additional"

    invoke-interface {p0, v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 62
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 63
    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 64
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    const-string v4, "key"

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 65
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v4, "value"

    invoke-interface {v2, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 67
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 71
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static parseGeometricPropsElementFromParent(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)Z
    .locals 1

    .line 164
    const-string v0, "geometric-props"

    invoke-static {p0, v0, p2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 168
    const-string p2, "x"

    invoke-static {p0, p1, p2, p2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string p2, "y"

    invoke-static {p0, p1, p2, p2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string p2, "width"

    invoke-static {p0, p1, p2, p2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string p2, "height"

    invoke-static {p0, p1, p2, p2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string p2, "rotation"

    invoke-static {p0, p1, p2, p2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string p2, "contentScale"

    invoke-static {p0, p1, p2, p2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static saveAdditionalsProperty(Ljava/util/Map;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Lcom/metamoji/df/model/IModel;"
        }
    .end annotation

    .line 106
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    .line 107
    const-string v1, "additionals"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 108
    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 109
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 111
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method
