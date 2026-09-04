.class public final Lcom/metamoji/lib/utils/SortedList$Companion;
.super Ljava/lang/Object;
.source "SortedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/SortedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JA\u0010\u0004\u001a\u00020\u0005\"\u0004\u0008\u0001\u0010\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u00082\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000c\u001a\u0002H\u0006\u00a2\u0006\u0002\u0010\rJK\u0010\u0004\u001a\u00020\u000b\"\u0004\u0008\u0001\u0010\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u00082\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000c\u001a\u0002H\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/SortedList$Companion;",
        "",
        "<init>",
        "()V",
        "find",
        "Lcom/metamoji/lib/utils/SortedList$Position;",
        "T",
        "list",
        "",
        "comparator",
        "Lkotlin/Function2;",
        "",
        "element",
        "(Ljava/util/List;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)Lcom/metamoji/lib/utils/SortedList$Position;",
        "result",
        "(Ljava/util/List;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lcom/metamoji/lib/utils/SortedList$Position;)I",
        "utils"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/lib/utils/SortedList$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final find(Ljava/util/List;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lcom/metamoji/lib/utils/SortedList$Position;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-TT;",
            "Ljava/lang/Integer;",
            ">;TT;",
            "Lcom/metamoji/lib/utils/SortedList$Position;",
            ")I"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 190
    invoke-virtual {p4}, Lcom/metamoji/lib/utils/SortedList$Position;->reset()V

    .line 192
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    if-gez v0, :cond_1

    return v1

    .line 201
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-gez v2, :cond_3

    if-eqz p4, :cond_2

    .line 204
    invoke-virtual {p4, v0}, Lcom/metamoji/lib/utils/SortedList$Position;->setPrev(I)V

    :cond_2
    return v1

    :cond_3
    const/4 v2, 0x0

    move v3, v0

    :goto_0
    if-gt v2, v3, :cond_7

    add-int v4, v2, v3

    .line 210
    div-int/lit8 v4, v4, 0x2

    .line 211
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 212
    invoke-interface {p2, v5, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-nez v5, :cond_5

    if-eqz p4, :cond_4

    .line 216
    invoke-virtual {p4, v4}, Lcom/metamoji/lib/utils/SortedList$Position;->setHit(I)V

    add-int/lit8 p1, v4, -0x1

    .line 217
    invoke-virtual {p4, p1}, Lcom/metamoji/lib/utils/SortedList$Position;->setPrev(I)V

    if-ge v4, v0, :cond_4

    add-int/lit8 p1, v4, 0x1

    .line 219
    invoke-virtual {p4, p1}, Lcom/metamoji/lib/utils/SortedList$Position;->setNext(I)V

    :cond_4
    return v4

    :cond_5
    if-gez v5, :cond_6

    add-int/lit8 v2, v4, 0x1

    goto :goto_0

    :cond_6
    add-int/lit8 v3, v4, -0x1

    goto :goto_0

    :cond_7
    if-eqz p4, :cond_8

    .line 230
    invoke-virtual {p4, v2}, Lcom/metamoji/lib/utils/SortedList$Position;->setNext(I)V

    add-int/lit8 v2, v2, -0x1

    .line 231
    invoke-virtual {p4, v2}, Lcom/metamoji/lib/utils/SortedList$Position;->setPrev(I)V

    :cond_8
    return v1
.end method

.method public final find(Ljava/util/List;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)Lcom/metamoji/lib/utils/SortedList$Position;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-TT;",
            "Ljava/lang/Integer;",
            ">;TT;)",
            "Lcom/metamoji/lib/utils/SortedList$Position;"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    new-instance v0, Lcom/metamoji/lib/utils/SortedList$Position;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/SortedList$Position;-><init>()V

    .line 186
    sget-object v1, Lcom/metamoji/lib/utils/SortedList;->Companion:Lcom/metamoji/lib/utils/SortedList$Companion;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/metamoji/lib/utils/SortedList$Companion;->find(Ljava/util/List;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lcom/metamoji/lib/utils/SortedList$Position;)I

    return-object v0
.end method
