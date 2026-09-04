.class public final Lcom/metamoji/video/AmvDLTempFile$Status;
.super Ljava/lang/Object;
.source "AmvDLTempFile.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/AmvDLTempFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Status"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u001f\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00032\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/metamoji/video/AmvDLTempFile$Status;",
        "",
        "busy",
        "",
        "file",
        "Ljava/io/File;",
        "<init>",
        "(ZLjava/io/File;)V",
        "getBusy",
        "()Z",
        "getFile",
        "()Ljava/io/File;",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "video"
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
.field private final busy:Z

.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(ZLjava/io/File;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/metamoji/video/AmvDLTempFile$Status;->busy:Z

    iput-object p2, p0, Lcom/metamoji/video/AmvDLTempFile$Status;->file:Ljava/io/File;

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/video/AmvDLTempFile$Status;ZLjava/io/File;ILjava/lang/Object;)Lcom/metamoji/video/AmvDLTempFile$Status;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-boolean p1, p0, Lcom/metamoji/video/AmvDLTempFile$Status;->busy:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/metamoji/video/AmvDLTempFile$Status;->file:Ljava/io/File;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/video/AmvDLTempFile$Status;->copy(ZLjava/io/File;)Lcom/metamoji/video/AmvDLTempFile$Status;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/metamoji/video/AmvDLTempFile$Status;->busy:Z

    return v0
.end method

.method public final component2()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/video/AmvDLTempFile$Status;->file:Ljava/io/File;

    return-object v0
.end method

.method public final copy(ZLjava/io/File;)Lcom/metamoji/video/AmvDLTempFile$Status;
    .locals 1

    new-instance v0, Lcom/metamoji/video/AmvDLTempFile$Status;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/video/AmvDLTempFile$Status;-><init>(ZLjava/io/File;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/video/AmvDLTempFile$Status;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/video/AmvDLTempFile$Status;

    iget-boolean v1, p0, Lcom/metamoji/video/AmvDLTempFile$Status;->busy:Z

    iget-boolean v3, p1, Lcom/metamoji/video/AmvDLTempFile$Status;->busy:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/metamoji/video/AmvDLTempFile$Status;->file:Ljava/io/File;

    iget-object p1, p1, Lcom/metamoji/video/AmvDLTempFile$Status;->file:Ljava/io/File;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getBusy()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/metamoji/video/AmvDLTempFile$Status;->busy:Z

    return v0
.end method

.method public final getFile()Ljava/io/File;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/video/AmvDLTempFile$Status;->file:Ljava/io/File;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/metamoji/video/AmvDLTempFile$Status;->busy:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/video/AmvDLTempFile$Status;->file:Ljava/io/File;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/metamoji/video/AmvDLTempFile$Status;->busy:Z

    iget-object v1, p0, Lcom/metamoji/video/AmvDLTempFile$Status;->file:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Status(busy="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", file="

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
