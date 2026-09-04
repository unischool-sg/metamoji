.class public final Lcom/metamoji/lib/utils/SortedList$Position;
.super Ljava/lang/Object;
.source "SortedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/SortedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Position"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0008J\u0006\u0010\u0011\u001a\u00020\u0012J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\n\"\u0004\u0008\u000e\u0010\u000cR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\n\"\u0004\u0008\u0010\u0010\u000c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/SortedList$Position;",
        "",
        "hit",
        "",
        "prev",
        "next",
        "<init>",
        "(III)V",
        "()V",
        "getHit",
        "()I",
        "setHit",
        "(I)V",
        "getPrev",
        "setPrev",
        "getNext",
        "setNext",
        "reset",
        "",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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


# instance fields
.field private hit:I

.field private next:I

.field private prev:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 114
    invoke-direct {p0, v0, v0, v0}, Lcom/metamoji/lib/utils/SortedList$Position;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/metamoji/lib/utils/SortedList$Position;->hit:I

    iput p2, p0, Lcom/metamoji/lib/utils/SortedList$Position;->prev:I

    iput p3, p0, Lcom/metamoji/lib/utils/SortedList$Position;->next:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/lib/utils/SortedList$Position;IIIILjava/lang/Object;)Lcom/metamoji/lib/utils/SortedList$Position;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/metamoji/lib/utils/SortedList$Position;->hit:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/metamoji/lib/utils/SortedList$Position;->prev:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/metamoji/lib/utils/SortedList$Position;->next:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/SortedList$Position;->copy(III)Lcom/metamoji/lib/utils/SortedList$Position;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/metamoji/lib/utils/SortedList$Position;->hit:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/metamoji/lib/utils/SortedList$Position;->prev:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/metamoji/lib/utils/SortedList$Position;->next:I

    return v0
.end method

.method public final copy(III)Lcom/metamoji/lib/utils/SortedList$Position;
    .locals 1

    new-instance v0, Lcom/metamoji/lib/utils/SortedList$Position;

    invoke-direct {v0, p1, p2, p3}, Lcom/metamoji/lib/utils/SortedList$Position;-><init>(III)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/lib/utils/SortedList$Position;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/lib/utils/SortedList$Position;

    iget v1, p0, Lcom/metamoji/lib/utils/SortedList$Position;->hit:I

    iget v3, p1, Lcom/metamoji/lib/utils/SortedList$Position;->hit:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/metamoji/lib/utils/SortedList$Position;->prev:I

    iget v3, p1, Lcom/metamoji/lib/utils/SortedList$Position;->prev:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/metamoji/lib/utils/SortedList$Position;->next:I

    iget p1, p1, Lcom/metamoji/lib/utils/SortedList$Position;->next:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getHit()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/metamoji/lib/utils/SortedList$Position;->hit:I

    return v0
.end method

.method public final getNext()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/metamoji/lib/utils/SortedList$Position;->next:I

    return v0
.end method

.method public final getPrev()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/metamoji/lib/utils/SortedList$Position;->prev:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/metamoji/lib/utils/SortedList$Position;->hit:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/metamoji/lib/utils/SortedList$Position;->prev:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/metamoji/lib/utils/SortedList$Position;->next:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final reset()V
    .locals 1

    const/4 v0, -0x1

    .line 116
    iput v0, p0, Lcom/metamoji/lib/utils/SortedList$Position;->hit:I

    .line 117
    iput v0, p0, Lcom/metamoji/lib/utils/SortedList$Position;->prev:I

    .line 118
    iput v0, p0, Lcom/metamoji/lib/utils/SortedList$Position;->next:I

    return-void
.end method

.method public final setHit(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/metamoji/lib/utils/SortedList$Position;->hit:I

    return-void
.end method

.method public final setNext(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/metamoji/lib/utils/SortedList$Position;->next:I

    return-void
.end method

.method public final setPrev(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/metamoji/lib/utils/SortedList$Position;->prev:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/metamoji/lib/utils/SortedList$Position;->hit:I

    iget v1, p0, Lcom/metamoji/lib/utils/SortedList$Position;->prev:I

    iget v2, p0, Lcom/metamoji/lib/utils/SortedList$Position;->next:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Position(hit="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", prev="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
