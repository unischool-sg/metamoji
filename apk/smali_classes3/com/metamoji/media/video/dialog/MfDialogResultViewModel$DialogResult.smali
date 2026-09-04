.class public final Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;
.super Ljava/lang/Object;
.source "MfDialogResultViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DialogResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00c6\u0003J)\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0001H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;",
        "",
        "dlgId",
        "",
        "ok",
        "",
        "value",
        "<init>",
        "(Ljava/lang/String;ZLjava/lang/Object;)V",
        "getDlgId",
        "()Ljava/lang/String;",
        "getOk",
        "()Z",
        "getValue",
        "()Ljava/lang/Object;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "app"
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
.field private final dlgId:Ljava/lang/String;

.field private final ok:Z

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Object;)V
    .locals 1

    const-string v0, "dlgId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->dlgId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->ok:Z

    iput-object p3, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->value:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 10
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;-><init>(Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;Ljava/lang/String;ZLjava/lang/Object;ILjava/lang/Object;)Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->dlgId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->ok:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->value:Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->copy(Ljava/lang/String;ZLjava/lang/Object;)Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->dlgId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->ok:Z

    return v0
.end method

.method public final component3()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ZLjava/lang/Object;)Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;
    .locals 1

    const-string v0, "dlgId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;-><init>(Ljava/lang/String;ZLjava/lang/Object;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->dlgId:Ljava/lang/String;

    iget-object v3, p1, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->dlgId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->ok:Z

    iget-boolean v3, p1, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->ok:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->value:Ljava/lang/Object;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDlgId()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->dlgId:Ljava/lang/String;

    return-object v0
.end method

.method public final getOk()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->ok:Z

    return v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->dlgId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->ok:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->value:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->dlgId:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->ok:Z

    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->value:Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DialogResult(dlgId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", ok="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
