.class final Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;
.super Ljava/lang/Object;
.source "UtFocusManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/UtFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Focusable"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B\u0013\u0008\u0016\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0008B\u0011\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\tJ\u0010\u0010\u0011\u001a\u00020\u000f2\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u001f\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u000f2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0010\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;",
        "",
        "id",
        "",
        "fm",
        "Lcom/metamoji/lib/dialog/UtFocusManager;",
        "<init>",
        "(ILcom/metamoji/lib/dialog/UtFocusManager;)V",
        "(I)V",
        "(Lcom/metamoji/lib/dialog/UtFocusManager;)V",
        "getId",
        "()I",
        "getFm",
        "()Lcom/metamoji/lib/dialog/UtFocusManager;",
        "isView",
        "",
        "()Z",
        "hasView",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
        "dialog"
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
.field private final fm:Lcom/metamoji/lib/dialog/UtFocusManager;

.field private final id:I

.field private final isView:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;-><init>(ILcom/metamoji/lib/dialog/UtFocusManager;)V

    return-void
.end method

.method public constructor <init>(ILcom/metamoji/lib/dialog/UtFocusManager;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->id:I

    iput-object p2, p0, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->fm:Lcom/metamoji/lib/dialog/UtFocusManager;

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 45
    :goto_0
    iput-boolean p1, p0, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->isView:Z

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/lib/dialog/UtFocusManager;)V
    .locals 1

    const-string v0, "fm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0, p1}, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;-><init>(ILcom/metamoji/lib/dialog/UtFocusManager;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;ILcom/metamoji/lib/dialog/UtFocusManager;ILjava/lang/Object;)Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->id:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->fm:Lcom/metamoji/lib/dialog/UtFocusManager;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->copy(ILcom/metamoji/lib/dialog/UtFocusManager;)Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->id:I

    return v0
.end method

.method public final component2()Lcom/metamoji/lib/dialog/UtFocusManager;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->fm:Lcom/metamoji/lib/dialog/UtFocusManager;

    return-object v0
.end method

.method public final copy(ILcom/metamoji/lib/dialog/UtFocusManager;)Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;
    .locals 1

    new-instance v0, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;-><init>(ILcom/metamoji/lib/dialog/UtFocusManager;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;

    iget v1, p0, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->id:I

    iget v3, p1, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->fm:Lcom/metamoji/lib/dialog/UtFocusManager;

    iget-object p1, p1, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->fm:Lcom/metamoji/lib/dialog/UtFocusManager;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getFm()Lcom/metamoji/lib/dialog/UtFocusManager;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->fm:Lcom/metamoji/lib/dialog/UtFocusManager;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->id:I

    return v0
.end method

.method public final hasView(I)Z
    .locals 3

    .line 47
    iget-boolean v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->isView:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->id:I

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->fm:Lcom/metamoji/lib/dialog/UtFocusManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/dialog/UtFocusManager;->hasView(I)Z

    move-result p1

    if-ne p1, v1, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->fm:Lcom/metamoji/lib/dialog/UtFocusManager;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtFocusManager;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isView()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->isView:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->id:I

    iget-object v1, p0, Lcom/metamoji/lib/dialog/UtFocusManager$Focusable;->fm:Lcom/metamoji/lib/dialog/UtFocusManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Focusable(id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", fm="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
