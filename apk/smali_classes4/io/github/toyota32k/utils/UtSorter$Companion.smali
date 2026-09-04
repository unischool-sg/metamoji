.class public final Lio/github/toyota32k/utils/UtSorter$Companion;
.super Ljava/lang/Object;
.source "UtSorter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/utils/UtSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JG\u0010\u0004\u001a\u00020\u0005\"\u0004\u0008\u0001\u0010\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u00082\u0016\u0010\t\u001a\u0012\u0012\u0004\u0012\u0002H\u00060\nj\u0008\u0012\u0004\u0012\u0002H\u0006`\u000b2\u0006\u0010\u000c\u001a\u0002H\u00062\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lio/github/toyota32k/utils/UtSorter$Companion;",
        "",
        "<init>",
        "()V",
        "find",
        "",
        "T",
        "list",
        "",
        "comparator",
        "Ljava/util/Comparator;",
        "Lkotlin/Comparator;",
        "element",
        "result",
        "Lio/github/toyota32k/utils/UtSorter$Position;",
        "(Ljava/util/List;Ljava/util/Comparator;Ljava/lang/Object;Lio/github/toyota32k/utils/UtSorter$Position;)I",
        "libUtils_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/github/toyota32k/utils/UtSorter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final find(Ljava/util/List;Ljava/util/Comparator;Ljava/lang/Object;Lio/github/toyota32k/utils/UtSorter$Position;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Ljava/util/Comparator<",
            "TT;>;TT;",
            "Lio/github/toyota32k/utils/UtSorter$Position;",
            ")I"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p4}, Lio/github/toyota32k/utils/UtSorter$Position;->reset()V

    .line 87
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    if-gez v0, :cond_0

    return v1

    .line 96
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    .line 99
    invoke-virtual {p4, v0}, Lio/github/toyota32k/utils/UtSorter$Position;->setPrev(I)V

    return v1

    :cond_1
    const/4 v2, 0x0

    move v3, v0

    :goto_0
    if-gt v2, v3, :cond_5

    add-int v4, v2, v3

    .line 105
    div-int/lit8 v4, v4, 0x2

    .line 106
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 107
    invoke-interface {p2, v5, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_3

    .line 111
    invoke-virtual {p4, v4}, Lio/github/toyota32k/utils/UtSorter$Position;->setHit(I)V

    add-int/lit8 p1, v4, -0x1

    .line 112
    invoke-virtual {p4, p1}, Lio/github/toyota32k/utils/UtSorter$Position;->setPrev(I)V

    if-ge v4, v0, :cond_2

    add-int/lit8 p1, v4, 0x1

    .line 114
    invoke-virtual {p4, p1}, Lio/github/toyota32k/utils/UtSorter$Position;->setNext(I)V

    :cond_2
    return v4

    :cond_3
    if-gez v5, :cond_4

    add-int/lit8 v2, v4, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v4, -0x1

    goto :goto_0

    .line 125
    :cond_5
    invoke-virtual {p4, v2}, Lio/github/toyota32k/utils/UtSorter$Position;->setNext(I)V

    add-int/lit8 v2, v2, -0x1

    .line 126
    invoke-virtual {p4, v2}, Lio/github/toyota32k/utils/UtSorter$Position;->setPrev(I)V

    return v1
.end method
