.class public Lcom/metamoji/cv/xml/XmlUtils$Incoming;
.super Ljava/lang/Object;
.source "XmlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cv/xml/XmlUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Incoming"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/cv/xml/XmlUtils$Incoming$IChecker;,
        Lcom/metamoji/cv/xml/XmlUtils$Incoming$IObjectGenerator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdditionals(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 851
    invoke-static {p0}, Lcom/metamoji/cv/CvConverterUtils;->childAdditionalsElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 853
    invoke-static {p0}, Lcom/metamoji/cv/CvConverterUtils;->parseAdditionalsElement(Lorg/w3c/dom/Element;)Ljava/util/Map;

    move-result-object p0

    .line 854
    invoke-static {p0, p1}, Lcom/metamoji/cv/CvConverterUtils;->saveAdditionalsProperty(Ljava/util/Map;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    :cond_0
    return-void
.end method

.method public static getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 728
    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V

    return-void
.end method

.method public static getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Incoming$IChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Lcom/metamoji/df/model/IModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/metamoji/cv/xml/XmlUtils$Incoming$IChecker<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 695
    invoke-interface {p0, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p4, p0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming$IChecker;->check(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    if-eqz p0, :cond_0

    .line 697
    invoke-interface {p1, p2, p0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_0
    return-void
.end method

.method public static getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V
    .locals 1

    .line 711
    new-instance v0, Lcom/metamoji/cv/xml/XmlUtils$Incoming$4;

    invoke-direct {v0, p4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming$4;-><init>(Ljava/lang/Double;)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Incoming$IChecker;)V

    return-void
.end method

.method public static getAttributeAsDoubleList(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 786
    new-instance v0, Lcom/metamoji/cv/xml/XmlUtils$Incoming$6;

    invoke-direct {v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming$6;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsList(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Incoming$IObjectGenerator;)V

    return-void
.end method

.method public static getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 682
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Incoming$IChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Lcom/metamoji/df/model/IModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/metamoji/cv/xml/XmlUtils$Incoming$IChecker<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 650
    invoke-interface {p0, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p4, p0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming$IChecker;->check(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 652
    invoke-interface {p1, p2, p0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_0
    return-void
.end method

.method public static getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 665
    new-instance v0, Lcom/metamoji/cv/xml/XmlUtils$Incoming$3;

    invoke-direct {v0, p4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming$3;-><init>(Ljava/lang/Integer;)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Incoming$IChecker;)V

    return-void
.end method

.method public static getAttributeAsIntList(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 769
    new-instance v0, Lcom/metamoji/cv/xml/XmlUtils$Incoming$5;

    invoke-direct {v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming$5;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsList(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Incoming$IObjectGenerator;)V

    return-void
.end method

.method private static getAttributeAsList(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Incoming$IObjectGenerator;)V
    .locals 3

    .line 748
    invoke-interface {p0, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 749
    invoke-static {p0}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 750
    const-string p3, ","

    invoke-virtual {p0, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 751
    new-instance p3, Ljava/util/ArrayList;

    array-length v0, p0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 752
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 753
    invoke-interface {p4, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming$IObjectGenerator;->generate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 756
    :cond_0
    invoke-interface {p1, p2, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public static getAttributeAsModelVersion(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)I
    .locals 0

    .line 832
    :try_start_0
    invoke-interface {p0, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 833
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    .line 834
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 835
    const-string p2, "!version"

    invoke-interface {p1, p2, p0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 839
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getAttributeAsPointArray(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 815
    invoke-interface {p0, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 816
    invoke-static {p0}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 817
    invoke-static {p0}, Lcom/metamoji/cm/PointArray;->parse(Ljava/lang/String;)Lcom/metamoji/cm/PointArray;

    move-result-object p0

    .line 818
    invoke-interface {p1, p2, p0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/PointArray;)V

    :cond_0
    return-void
.end method

.method public static getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 637
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Incoming$IChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Lcom/metamoji/df/model/IModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/metamoji/cv/xml/XmlUtils$Incoming$IChecker<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 605
    invoke-interface {p0, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming$IChecker;->check(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 607
    invoke-interface {p1, p2, p0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 620
    new-instance v0, Lcom/metamoji/cv/xml/XmlUtils$Incoming$2;

    invoke-direct {v0, p4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming$2;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Incoming$IChecker;)V

    return-void
.end method

.method public static getAttributeAsStringList(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 803
    new-instance v0, Lcom/metamoji/cv/xml/XmlUtils$Incoming$7;

    invoke-direct {v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming$7;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsList(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Incoming$IObjectGenerator;)V

    return-void
.end method

.method public static getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 0

    .line 518
    invoke-static {p0, p1, p2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 520
    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    const-class p1, Lorg/w3c/dom/Element;

    invoke-static {p0, p1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;
    .locals 0

    .line 492
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0
.end method

.method public static getSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;
    .locals 2

    :goto_0
    if-eqz p0, :cond_1

    .line 504
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 505
    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0

    .line 503
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static listChildElementsByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 4

    const/4 v0, 0x0

    .line 538
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 539
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 541
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 542
    move-object v2, p0

    check-cast v2, Lorg/w3c/dom/Element;

    .line 543
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 544
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0

    .line 550
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_3

    new-instance p0, Lcom/metamoji/cv/xml/XmlUtils$Incoming$1;

    invoke-direct {p0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming$1;-><init>(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_3
    return-object v0

    :catch_0
    move-exception p0

    .line 564
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static listChildElementsByNameEx(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;
    .locals 0

    .line 578
    invoke-static {p0, p1, p2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 580
    new-instance p1, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;

    invoke-direct {p1, p0}, Lcom/metamoji/cv/xml/XmlUtils$NodeListEx;-><init>(Lorg/w3c/dom/NodeList;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
