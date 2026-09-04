.class public final Lcom/metamoji/pdf/content/OCGs;
.super Ljava/lang/Object;
.source "OCGs.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/pdf/content/OCGs$Companion;,
        Lcom/metamoji/pdf/content/OCGs$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOCGs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OCGs.kt\ncom/metamoji/pdf/content/OCGs\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,114:1\n1740#2,3:115\n1740#2,3:118\n1761#2,3:121\n1761#2,3:124\n1740#2,3:127\n1761#2,3:130\n*S KotlinDebug\n*F\n+ 1 OCGs.kt\ncom/metamoji/pdf/content/OCGs\n*L\n76#1:115,3\n77#1:118,3\n78#1:121,3\n79#1:124,3\n93#1:127,3\n94#1:130,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000e\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0006J\u000e\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0006J\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0006J\u000e\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0006J\u000e\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u0006J\u000e\u0010\u0011\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u0006J\u000e\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0006J\u0010\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0006H\u0002R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/metamoji/pdf/content/OCGs;",
        "",
        "<init>",
        "()V",
        "_ocgs",
        "",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "",
        "init",
        "",
        "ocgs",
        "isValid",
        "ocg",
        "setConfig",
        "config",
        "isOn",
        "setOn",
        "toggle",
        "isVisible",
        "oc",
        "eval",
        "ve",
        "Companion",
        "pdf"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/metamoji/pdf/content/OCGs$Companion;


# instance fields
.field private final _ocgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/metamoji/pdf/core/PDFObj;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/pdf/content/OCGs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/content/OCGs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/pdf/content/OCGs;->Companion:Lcom/metamoji/pdf/content/OCGs$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/metamoji/pdf/content/OCGs;->_ocgs:Ljava/util/Map;

    return-void
.end method

.method private final eval(Lcom/metamoji/pdf/core/PDFObj;)Z
    .locals 5

    .line 90
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->getType()Lcom/metamoji/pdf/core/PDFObj$Type;

    move-result-object v0

    sget-object v1, Lcom/metamoji/pdf/content/OCGs$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj$Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    .line 97
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/pdf/content/OCGs;->isOn(Lcom/metamoji/pdf/core/PDFObj;)Z

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x0

    .line 91
    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/pdf/core/PDFObj;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0xa03

    if-eq v3, v4, :cond_a

    const v4, 0x101b7

    if-eq v3, v4, :cond_5

    const v4, 0x132b3

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "Not"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p1, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/pdf/content/OCGs;->eval(Lcom/metamoji/pdf/core/PDFObj;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0

    .line 91
    :cond_5
    const-string v3, "And"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    .line 93
    :cond_6
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 127
    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_7

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    return v1

    .line 128
    :cond_7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/pdf/core/PDFObj;

    .line 93
    invoke-direct {p0, v2}, Lcom/metamoji/pdf/content/OCGs;->eval(Lcom/metamoji/pdf/core/PDFObj;)Z

    move-result v2

    if-nez v2, :cond_8

    return v0

    :cond_9
    return v1

    .line 91
    :cond_a
    const-string v3, "Or"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :goto_0
    return v1

    .line 94
    :cond_b
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 130
    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_c

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    return v0

    .line 131
    :cond_c
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/pdf/core/PDFObj;

    .line 94
    invoke-direct {p0, v2}, Lcom/metamoji/pdf/content/OCGs;->eval(Lcom/metamoji/pdf/core/PDFObj;)Z

    move-result v2

    if-eqz v2, :cond_d

    return v1

    :cond_e
    return v0
.end method


# virtual methods
.method public final init(Lcom/metamoji/pdf/core/PDFObj;)V
    .locals 3

    const-string v0, "ocgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/pdf/core/PDFObj;

    .line 12
    iget-object v1, p0, Lcom/metamoji/pdf/content/OCGs;->_ocgs:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final isOn(Lcom/metamoji/pdf/core/PDFObj;)Z
    .locals 1

    const-string v0, "ocg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/metamoji/pdf/content/OCGs;->_ocgs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final isValid(Lcom/metamoji/pdf/core/PDFObj;)Z
    .locals 1

    const-string v0, "ocg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/metamoji/pdf/content/OCGs;->_ocgs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isVisible(Lcom/metamoji/pdf/core/PDFObj;)Z
    .locals 6

    const-string v0, "oc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    const-string v0, "Type"

    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string v1, "OCG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/metamoji/pdf/content/OCGs;->_ocgs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    return v3

    .line 53
    :cond_0
    const-string v1, "OCMD"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 54
    const-string v0, "VE"

    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->getType()Lcom/metamoji/pdf/core/PDFObj$Type;

    move-result-object v0

    sget-object v1, Lcom/metamoji/pdf/core/PDFObj$Type;->ARRAY:Lcom/metamoji/pdf/core/PDFObj$Type;

    if-ne v0, v1, :cond_14

    invoke-direct {p0, p1}, Lcom/metamoji/pdf/content/OCGs;->eval(Lcom/metamoji/pdf/core/PDFObj;)Z

    move-result p1

    return p1

    .line 58
    :cond_1
    const-string v0, "OCGs"

    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 60
    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj;->getType()Lcom/metamoji/pdf/core/PDFObj$Type;

    move-result-object v4

    sget-object v5, Lcom/metamoji/pdf/core/PDFObj$Type;->DICTIONARY:Lcom/metamoji/pdf/core/PDFObj$Type;

    if-ne v4, v5, :cond_2

    .line 61
    iget-object v4, p0, Lcom/metamoji/pdf/content/OCGs;->_ocgs:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 63
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/pdf/core/PDFObj;

    .line 67
    iget-object v5, p0, Lcom/metamoji/pdf/content/OCGs;->_ocgs:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    .line 69
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_4
    :goto_1
    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 75
    const-string v0, "P"

    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    const-string v0, "AnyOn"

    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v0, "AnyOff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_2

    .line 79
    :cond_5
    check-cast v1, Ljava/lang/Iterable;

    .line 124
    instance-of p1, v1, Ljava/util/Collection;

    if-eqz p1, :cond_6

    move-object p1, v1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    return v3

    .line 125
    :cond_6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    :cond_8
    return v3

    .line 75
    :sswitch_1
    const-string v0, "AllOff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_2

    .line 77
    :cond_9
    check-cast v1, Ljava/lang/Iterable;

    .line 118
    instance-of p1, v1, Ljava/util/Collection;

    if-eqz p1, :cond_a

    move-object p1, v1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    return v2

    .line 119
    :cond_a
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    return v3

    :cond_c
    return v2

    .line 75
    :sswitch_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_2

    .line 78
    :cond_d
    check-cast v1, Ljava/lang/Iterable;

    .line 121
    instance-of p1, v1, Ljava/util/Collection;

    if-eqz p1, :cond_e

    move-object p1, v1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    return v3

    .line 122
    :cond_e
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    return v2

    :cond_10
    return v3

    .line 75
    :sswitch_3
    const-string v0, "AllOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_2

    .line 76
    :cond_11
    check-cast v1, Ljava/lang/Iterable;

    .line 115
    instance-of p1, v1, Ljava/util/Collection;

    if-eqz p1, :cond_12

    move-object p1, v1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_12

    return v2

    .line 116
    :cond_12
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    return v3

    :cond_14
    :goto_2
    return v2

    :sswitch_data_0
    .sparse-switch
        0x3c6af40 -> :sswitch_3
        0x3c7c8cb -> :sswitch_2
        0x750f382e -> :sswitch_1
        0x75315003 -> :sswitch_0
    .end sparse-switch
.end method

.method public final setConfig(Lcom/metamoji/pdf/core/PDFObj;)V
    .locals 8

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    const-string v0, "BaseState"

    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    const-string v1, "ON"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "OFF"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    .line 20
    iget-object v4, p0, Lcom/metamoji/pdf/content/OCGs;->_ocgs:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/pdf/core/PDFObj;

    .line 21
    iget-object v6, p0, Lcom/metamoji/pdf/content/OCGs;->_ocgs:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/pdf/core/PDFObj;

    .line 25
    iget-object v4, p0, Lcom/metamoji/pdf/content/OCGs;->_ocgs:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 26
    iget-object v4, p0, Lcom/metamoji/pdf/content/OCGs;->_ocgs:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 30
    :cond_2
    invoke-virtual {p1, v2}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/pdf/core/PDFObj;

    .line 31
    iget-object v1, p0, Lcom/metamoji/pdf/content/OCGs;->_ocgs:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 32
    iget-object v1, p0, Lcom/metamoji/pdf/content/OCGs;->_ocgs:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final setOn(Lcom/metamoji/pdf/core/PDFObj;)V
    .locals 2

    const-string v0, "ocg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/metamoji/pdf/content/OCGs;->_ocgs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/metamoji/pdf/content/OCGs;->_ocgs:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final toggle(Lcom/metamoji/pdf/core/PDFObj;)V
    .locals 2

    const-string v0, "ocg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/metamoji/pdf/content/OCGs;->_ocgs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/metamoji/pdf/content/OCGs;->_ocgs:Ljava/util/Map;

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
