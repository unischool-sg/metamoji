.class public Lcom/metamoji/un/draw2/library/accessor/DrAcModel;
.super Ljava/lang/Object;
.source "DrAcModel.java"


# static fields
.field private static final singleIndent:Ljava/lang/String; = "    "


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    invoke-interface {p1, p0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    return-void

    :cond_1
    :goto_0
    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 216
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public static allPropertyNames(Lcom/metamoji/df/model/IModel;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 877
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->allPropertyNames(Lcom/metamoji/df/model/IModel;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static allPropertyNames(Lcom/metamoji/df/model/IModel;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 882
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 885
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    .line 887
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 888
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_1
    if-nez p1, :cond_2

    return-object p0

    .line 893
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 894
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 895
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkReservedPropertyName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 896
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object p1
.end method

.method public static arrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 410
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    .line 414
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 417
    :cond_1
    invoke-interface {p1, p0}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static arrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/metamoji/df/model/IModel;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 478
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->arrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 482
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 483
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    .line 484
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p1

    :cond_2
    return-object p0
.end method

.method public static boolPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p0, :cond_0

    goto :goto_1

    .line 574
    :cond_0
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->propertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 578
    :cond_1
    instance-of p1, p0, Ljava/lang/Boolean;

    if-nez p1, :cond_3

    instance-of p1, p0, Ljava/lang/Integer;

    if-nez p1, :cond_3

    instance-of p1, p0, Ljava/lang/Double;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return-object v0

    .line 579
    :cond_3
    :goto_0
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    .line 571
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0
.end method

.method public static boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z
    .locals 0

    .line 584
    invoke-static {p0, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 585
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static bytePropertyForName(Ljava/lang/String;BLcom/metamoji/df/model/IModel;)B
    .locals 0

    .line 594
    invoke-static {p0, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->bytePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 595
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static bytePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;
    .locals 0

    .line 591
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->numberPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static checkChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Z
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getParent()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/metamoji/df/model/IModel;->equalsToModel(Lcom/metamoji/df/model/IModel;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 192
    invoke-static {p1, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return p1
.end method

.method public static checkModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static checkModel(Ljava/lang/Object;)Z
    .locals 0

    .line 33
    instance-of p0, p0, Lcom/metamoji/df/model/IModel;

    return p0
.end method

.method private static checkModelEquality(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    .line 1161
    :cond_0
    invoke-interface {p0, p1}, Lcom/metamoji/df/model/IModel;->equalsToModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 1164
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkPropertiesEquality(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Z)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 1167
    :cond_2
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 1168
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p0, :cond_4

    .line 1170
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModelEquality(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Z)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 1173
    :cond_3
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 1174
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_4
    if-nez p0, :cond_5

    if-nez p1, :cond_5

    return v2

    :cond_5
    :goto_1
    return v0
.end method

.method private static checkPropertiesEquality(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Z)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto :goto_2

    .line 1183
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1184
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 1185
    invoke-static {v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkReservedPropertyName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 1188
    :cond_1
    invoke-interface {p0, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkValueEquality(Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result v4

    if-nez v4, :cond_2

    return v0

    .line 1191
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1193
    :cond_3
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 1194
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkReservedPropertyName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 1197
    :cond_5
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v0

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_2
    return v0
.end method

.method public static checkPropertiesOfModel(Lcom/metamoji/df/model/IModel;Z)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 312
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 315
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object p0

    const/4 v2, 0x1

    if-nez p0, :cond_1

    .line 317
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_1
    if-nez p1, :cond_3

    .line 321
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    return v2

    :cond_2
    return v1

    .line 323
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 324
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkReservedPropertyName(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_5
    return v1
.end method

.method private static checkReservedPropertyName(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1088
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x21

    if-eq p0, v1, :cond_1

    const/16 v1, 0x3f

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static checkValueEquality(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 1096
    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1097
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_f

    .line 1098
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1100
    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 1101
    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_f

    .line 1102
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1109
    :cond_2
    instance-of v1, p0, Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 1110
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_f

    .line 1111
    check-cast p0, Ljava/util/List;

    .line 1112
    check-cast p1, Ljava/util/List;

    .line 1113
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v0

    :cond_3
    move v1, v0

    .line 1116
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 1117
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkValueEquality(Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result v3

    if-nez v3, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v2

    .line 1123
    :cond_6
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_b

    .line 1124
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_f

    .line 1125
    check-cast p0, Ljava/util/Map;

    .line 1126
    check-cast p1, Ljava/util/Map;

    .line 1127
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_7

    return v0

    .line 1130
    :cond_7
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1131
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1132
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v4, :cond_9

    if-eqz v3, :cond_9

    .line 1133
    invoke-static {v4, v3, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkValueEquality(Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_9
    return v0

    :cond_a
    return v2

    .line 1139
    :cond_b
    instance-of v1, p0, Lcom/metamoji/cm/Blob;

    if-eqz v1, :cond_d

    .line 1140
    instance-of p2, p1, Lcom/metamoji/cm/Blob;

    if-eqz p2, :cond_f

    .line 1141
    check-cast p0, Lcom/metamoji/cm/Blob;

    .line 1142
    check-cast p1, Lcom/metamoji/cm/Blob;

    .line 1143
    invoke-virtual {p0}, Lcom/metamoji/cm/Blob;->getMimeType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/metamoji/cm/Blob;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p0}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p0

    invoke-virtual {p1}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_c

    return v2

    :cond_c
    return v0

    .line 1145
    :cond_d
    instance-of v1, p0, Lcom/metamoji/cm/PointArray;

    if-eqz v1, :cond_e

    .line 1146
    instance-of p2, p1, Lcom/metamoji/cm/PointArray;

    if-eqz p2, :cond_f

    .line 1147
    check-cast p0, Lcom/metamoji/cm/PointArray;

    check-cast p1, Lcom/metamoji/cm/PointArray;

    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Lcom/metamoji/cm/PointArray;Lcom/metamoji/cm/PointArray;)Z

    move-result p0

    return p0

    .line 1149
    :cond_e
    instance-of v1, p0, Lcom/metamoji/df/model/IModel;

    if-eqz v1, :cond_f

    .line 1150
    instance-of v1, p1, Lcom/metamoji/df/model/IModel;

    if-eqz v1, :cond_f

    .line 1151
    check-cast p0, Lcom/metamoji/df/model/IModel;

    check-cast p1, Lcom/metamoji/df/model/IModel;

    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModelEquality(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Z)Z

    move-result p0

    return p0

    :cond_f
    :goto_1
    return v0
.end method

.method public static childCount(Lcom/metamoji/df/model/IModel;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 200
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 204
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static clone(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 981
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 984
    :cond_0
    invoke-static {p0}, Lcom/metamoji/df/model/ModelUtils;->cloneModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static colorForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Integer;
    .locals 0

    .line 961
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 965
    :cond_0
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/color/DrUtColorUtility;->colorFromHexColorString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static dataPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)[B
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 372
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    const/4 p0, 0x1

    .line 376
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 379
    :cond_1
    invoke-interface {p2, p0}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 383
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/cm/Blob;->getMimeType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return-object v0

    .line 386
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p0

    return-object p0
.end method

.method public static destroy(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 992
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 995
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->destroy()V

    return-void
.end method

.method public static dictionaryPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 493
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    .line 497
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 501
    :cond_1
    invoke-interface {p1, p0}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static doublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)D
    .locals 0

    .line 704
    invoke-static {p0, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 705
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p1
.end method

.method public static doublePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;
    .locals 0

    .line 701
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->numberPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static equalChildren(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 107
    :cond_0
    invoke-interface {p0, p1}, Lcom/metamoji/df/model/IModel;->equalsToModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 110
    :cond_1
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 111
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p0, :cond_3

    .line 113
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModelEquality(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Z)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 116
    :cond_2
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 117
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_3
    if-nez p0, :cond_4

    if-nez p1, :cond_4

    return v2

    :cond_4
    :goto_1
    return v0
.end method

.method public static equalCompletely(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Z)Z
    .locals 0

    .line 123
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModelEquality(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Z)Z

    move-result p0

    return p0
.end method

.method public static equalProperties(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Z)Z
    .locals 1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-interface {p0, p1}, Lcom/metamoji/df/model/IModel;->equalsToModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 100
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkPropertiesEquality(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Z)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static equals(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Z
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 90
    invoke-interface {p0, p1}, Lcom/metamoji/df/model/IModel;->equalsToModel(Lcom/metamoji/df/model/IModel;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 168
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 171
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F
    .locals 0

    .line 694
    invoke-static {p0, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->numberPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 695
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static floatPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;
    .locals 0

    .line 691
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->numberPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static hasChild(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 184
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 187
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static hasPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 300
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    .line 304
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 307
    :cond_1
    invoke-interface {p1, p0}, Lcom/metamoji/df/model/IModel;->hasProperty(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static idArrayForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 914
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 918
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 919
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 920
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->idFromString(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 922
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 0

    .line 906
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 910
    :cond_0
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->idFromString(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p0

    return-object p0
.end method

.method public static insertChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getParent()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 p0, 0x1

    .line 229
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 232
    :cond_1
    invoke-interface {v1, p1, p0}, Lcom/metamoji/df/model/IModel;->insertBefore(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    return-void

    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 224
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public static intPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)I
    .locals 0

    .line 614
    invoke-static {p0, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 615
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static intPropertyForName(Ljava/lang/String;Ljava/lang/Class;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/metamoji/df/model/IModel;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 658
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    const/4 p0, 0x1

    .line 662
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 670
    :cond_1
    :try_start_0
    invoke-interface {p2, p0}, Lcom/metamoji/df/model/IModel;->getPropertyAsNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0
    :try_end_0
    .catch Lcom/metamoji/cm/CmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 672
    const-string p2, "DrAcModel.enumPropertyForName: error in getPropertyAsNumber()"

    invoke-static {p0, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    .line 674
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/EnumUtil;->enumOf(ILjava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/metamoji/df/model/IModel;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 629
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    const/4 p0, 0x1

    .line 633
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p1

    .line 641
    :cond_1
    :try_start_0
    invoke-interface {p2, p0}, Lcom/metamoji/df/model/IModel;->getPropertyAsNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0
    :try_end_0
    .catch Lcom/metamoji/cm/CmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 643
    const-string p2, "DrAcModel.enumPropertyForName: error in getPropertyAsNumber()"

    invoke-static {p0, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_2

    .line 646
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/EnumUtil;->enumOf(ILjava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public static intPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;
    .locals 0

    .line 611
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->numberPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static lastChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 176
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 179
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getLastChild()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static longPropertyForName(Ljava/lang/String;JLcom/metamoji/df/model/IModel;)J
    .locals 0

    .line 683
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "64bit\u6574\u6570\u306f\u30de\u30ba\u30a4"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static longPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Long;
    .locals 0

    .line 678
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "64bit\u6574\u6570\u306f\u30de\u30ba\u30a4"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static modelManager(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModelManager;
    .locals 0

    if-eqz p0, :cond_0

    .line 1084
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 552
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    .line 556
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 559
    :cond_1
    invoke-interface {p1, p0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static mutableDataPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 390
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->dataPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 394
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    array-length p2, p0

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 395
    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-byte v1, p0, v0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 42
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 45
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelManager(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, 0x1

    .line 47
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 50
    :cond_1
    invoke-interface {p1, p0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 160
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 163
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static numberArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 446
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->arrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 450
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 451
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 453
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 454
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 456
    :cond_1
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 458
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 460
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public static numberPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 359
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    .line 363
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 366
    :cond_1
    invoke-interface {p1, p0}, Lcom/metamoji/df/model/IModel;->getPropertyAsNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static parent(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 132
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 135
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getParent()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static pointArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/cm/PointArray;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 508
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    .line 512
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 515
    :cond_1
    invoke-interface {p1, p0}, Lcom/metamoji/df/model/IModel;->getPropertyAsPointArray(Ljava/lang/String;)Lcom/metamoji/cm/PointArray;

    move-result-object p0

    return-object p0
.end method

.method public static prevSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 152
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 155
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getPrevSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static propertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 335
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    .line 339
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 342
    :cond_1
    invoke-interface {p1, p0}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static rectArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 520
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    .line 524
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 527
    :cond_1
    invoke-interface {p1, p0}, Lcom/metamoji/df/model/IModel;->getPropertyAsPointArray(Ljava/lang/String;)Lcom/metamoji/cm/PointArray;

    move-result-object p0

    .line 528
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->checkRectArray(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method

.method public static removeAllProperties(Lcom/metamoji/df/model/IModel;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 856
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 859
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 p0, 0x1

    .line 861
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 864
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 865
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkReservedPropertyName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 866
    invoke-interface {p0, v1}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static removeChild(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 251
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 254
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getParent()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 256
    invoke-interface {v0, p0}, Lcom/metamoji/df/model/IModel;->remove(Lcom/metamoji/df/model/IModel;)V

    :cond_1
    return-void
.end method

.method public static removeChildren(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 284
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 287
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 289
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->remove(Lcom/metamoji/df/model/IModel;)V

    .line 290
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static removeFirstChild(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 262
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 265
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 267
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->remove(Lcom/metamoji/df/model/IModel;)V

    :cond_1
    return-void
.end method

.method public static removeLastChild(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 273
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 276
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getLastChild()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 278
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->remove(Lcom/metamoji/df/model/IModel;)V

    :cond_1
    return-void
.end method

.method public static removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 844
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    .line 848
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 851
    :cond_1
    invoke-interface {p1, p0}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    return-void
.end method

.method public static replaceChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getParent()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 p0, 0x1

    .line 242
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 245
    :cond_1
    invoke-interface {v1, p0, p1}, Lcom/metamoji/df/model/IModel;->insertBefore(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 246
    invoke-interface {v1, p0}, Lcom/metamoji/df/model/IModel;->remove(Lcom/metamoji/df/model/IModel;)V

    return-void

    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 237
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public static root(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 140
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 143
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getParent()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p0

    .line 147
    :cond_1
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->root(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static setArrayPropertyForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;",
            "Lcom/metamoji/df/model/IModel;",
            ")V"
        }
    .end annotation

    .line 753
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setPropertyForName(Ljava/lang/String;Ljava/lang/Object;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 797
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setPropertyForName(Ljava/lang/String;Ljava/lang/Object;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static setBytePropertyForName(Ljava/lang/String;BLcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 801
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static setColorForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 968
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/color/DrUtColorUtility;->hexColorStringFromColor(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    .line 969
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setStringPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static setColorRGBForName(Ljava/lang/String;IIILcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 972
    invoke-static {p1, p2, p3}, Lcom/metamoji/un/draw2/library/utility/color/DrUtColorUtility;->hexColorStringFromRGB(III)Ljava/lang/String;

    move-result-object p1

    .line 973
    invoke-static {p0, p1, p4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setStringPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static setDataPropertyForName(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/metamoji/df/model/IModel;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 746
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [B

    .line 748
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    move v0, v3

    goto :goto_0

    .line 749
    :cond_1
    new-instance p1, Lcom/metamoji/cm/Blob;

    invoke-direct {p1, v1, p2}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    invoke-static {p0, p1, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setPropertyForName(Ljava/lang/String;Ljava/lang/Object;Lcom/metamoji/df/model/IModel;)V

    return-void

    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 743
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public static setDataPropertyForName(Ljava/lang/String;[BLjava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 737
    :cond_0
    new-instance v0, Lcom/metamoji/cm/Blob;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    invoke-static {p0, v0, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setPropertyForName(Ljava/lang/String;Ljava/lang/Object;Lcom/metamoji/df/model/IModel;)V

    return-void

    :cond_1
    :goto_0
    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 734
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public static setDictionaryPropertyForName(Ljava/lang/String;Ljava/util/Map;Lcom/metamoji/df/model/IModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/metamoji/df/model/IModel;",
            ")V"
        }
    .end annotation

    .line 757
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setPropertyForName(Ljava/lang/String;Ljava/lang/Object;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 834
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 830
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static setIdArrayForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Lcom/metamoji/df/model/IModel;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 939
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 942
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 943
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 944
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 946
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 948
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 951
    :cond_2
    invoke-static {p0, v1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setArrayPropertyForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static setIdForName(Ljava/lang/String;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 929
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 931
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 934
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setStringPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static setIntPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 809
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/metamoji/df/model/IModel;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 818
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/EnumUtil;->intValue(Ljava/lang/Enum;)I

    move-result p1

    goto :goto_0

    .line 820
    :cond_0
    const-string p1, "null value"

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    move p1, v0

    .line 822
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static setLongPropertyForName(Ljava/lang/String;JLcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 826
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 785
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 786
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 789
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setPropertyForName(Ljava/lang/String;Ljava/lang/Object;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 729
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setPropertyForName(Ljava/lang/String;Ljava/lang/Object;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static setPointArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/cm/PointArray;Lcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 761
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 762
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 765
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setPropertyForName(Ljava/lang/String;Ljava/lang/Object;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static setPropertyForName(Ljava/lang/String;Ljava/lang/Object;Lcom/metamoji/df/model/IModel;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const/4 p0, 0x1

    .line 718
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 721
    :cond_1
    invoke-interface {p2, p0, p1}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 714
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public static setRectArrayPropertyForName(Ljava/lang/String;Ljava/lang/Object;Lcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 769
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->checkRectArray(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 770
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 773
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setPropertyForName(Ljava/lang/String;Ljava/lang/Object;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static setShortPropertyForName(Ljava/lang/String;SLcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 805
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static setSizeArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/cm/PointArray;Lcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 777
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSizeArray;->checkSizeArray(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 778
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 781
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setPropertyForName(Ljava/lang/String;Ljava/lang/Object;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static setStringPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 725
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setPropertyForName(Ljava/lang/String;Ljava/lang/Object;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static setVersion(ILcom/metamoji/df/model/IModel;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 78
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 81
    :cond_0
    invoke-interface {p1, p0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    return-void
.end method

.method public static shortPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;
    .locals 0

    .line 601
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->numberPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static shortPropertyForName(Ljava/lang/String;SLcom/metamoji/df/model/IModel;)S
    .locals 0

    .line 604
    invoke-static {p0, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->shortPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 605
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static sizeArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 536
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    .line 540
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 543
    :cond_1
    invoke-interface {p1, p0}, Lcom/metamoji/df/model/IModel;->getPropertyAsPointArray(Ljava/lang/String;)Lcom/metamoji/cm/PointArray;

    move-result-object p0

    .line 544
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSizeArray;->checkSizeArray(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method

.method public static stringArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 427
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->arrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 431
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 432
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 433
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 347
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    .line 351
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 354
    :cond_1
    invoke-interface {p1, p0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static stringValue(Ljava/lang/StringBuilder;Ljava/lang/Object;I)Ljava/lang/StringBuilder;
    .locals 9

    .line 1033
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1034
    const-string p2, "(St) "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0

    .line 1035
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 1036
    const-string p2, "(Nb) "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0

    .line 1037
    :cond_1
    instance-of v0, p1, [B

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1038
    const-string p2, "(Dt) <"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    check-cast p1, [B

    .line 1040
    array-length p2, p1

    :goto_0
    add-int/lit8 v0, v1, 0x4

    if-ge v0, p2, :cond_2

    .line 1042
    aget-byte v2, p1, v1

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x3

    aget-byte v1, p1, v1

    or-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%08x "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v1, p2, :cond_3

    add-int/lit8 v0, v1, 0x1

    .line 1043
    aget-byte v1, p1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%02x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    goto :goto_1

    .line 1044
    :cond_3
    const-string p1, ">"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0

    .line 1046
    :cond_4
    instance-of v0, p1, Lcom/metamoji/cm/PointArray;

    if-eqz v0, :cond_5

    .line 1047
    const-string p2, "(Pa) "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 v0, 0x1

    add-int/2addr p2, v0

    .line 1050
    new-instance v2, Ljava/lang/String;

    new-array v3, p2, [C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    const-string v3, "\u0000"

    const-string v4, "    "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1051
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1052
    instance-of v4, p1, Ljava/util/List;

    const-string v5, ",\n"

    const-string v6, "\n"

    if-eqz v4, :cond_8

    .line 1053
    const-string v4, "(Ar) (\n"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1056
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v7, v4, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringValue(Ljava/lang/StringBuilder;Ljava/lang/Object;I)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_6

    move-object v0, v6

    goto :goto_3

    :cond_6
    move-object v0, v5

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_2

    .line 1059
    :cond_7
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0

    .line 1061
    :cond_8
    instance-of v4, p1, Ljava/util/Map;

    if-eqz v4, :cond_b

    .line 1062
    const-string v4, "(Dc) {\n"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1065
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v4, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringValue(Ljava/lang/StringBuilder;Ljava/lang/Object;I)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_9

    move-object v0, v6

    goto :goto_5

    :cond_9
    move-object v0, v5

    :goto_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_4

    .line 1069
    :cond_a
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo p1, "}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0

    .line 1071
    :cond_b
    instance-of p2, p1, Lcom/metamoji/df/model/IModel;

    if-eqz p2, :cond_c

    .line 1072
    move-object p2, p1

    check-cast p2, Lcom/metamoji/df/model/IModel;

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->toString(Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object p2

    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v6, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    :cond_c
    const-string p2, "(??) "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Lcom/metamoji/df/model/IModel;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    .line 1001
    const-string p0, "null"

    return-object p0

    .line 1004
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1005
    const-string v2, "=====>> Model ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1007
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1008
    const-string v3, "----->> Properties\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1010
    invoke-static {v3}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    invoke-interface {p0, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringValue(Ljava/lang/StringBuilder;Ljava/lang/Object;I)Ljava/lang/StringBuilder;

    .line 1012
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1014
    :cond_1
    const-string v2, "<<----- Properties\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    :cond_2
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getChildModels()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1018
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 1019
    const-string v3, "----->> Children"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/model/IModel;

    .line 1021
    invoke-static {v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->toString(Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object v3

    .line 1022
    const-string v4, "\n    "

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1024
    :cond_3
    const-string v1, "<<----- Children"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    :cond_4
    const-string v1, "<<===== Model ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static type(Lcom/metamoji/df/model/IModel;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 58
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 61
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static version(Lcom/metamoji/df/model/IModel;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 71
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 74
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result p0

    return p0
.end method
