.class public final Lcom/metamoji/media/video/dialog/LocalFileInfo;
.super Ljava/lang/Object;
.source "MfFileListView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0015\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001J\t\u0010!\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\rR\u0011\u0010\u0012\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u000fR\u0011\u0010\u0014\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u000fR\u0011\u0010\u0016\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\r\u00a8\u0006\""
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/LocalFileInfo;",
        "",
        "file",
        "Ljava/io/File;",
        "duration",
        "",
        "ticket",
        "",
        "<init>",
        "(Ljava/io/File;JLjava/lang/String;)V",
        "getFile",
        "()Ljava/io/File;",
        "getDuration",
        "()J",
        "getTicket",
        "()Ljava/lang/String;",
        "lastModified",
        "getLastModified",
        "lastModifiedText",
        "getLastModifiedText",
        "durationText",
        "getDurationText",
        "size",
        "getSize",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
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
.field private final duration:J

.field private final file:Ljava/io/File;

.field private final lastModified:J

.field private final size:J

.field private final ticket:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;JLjava/lang/String;)V
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "ticket"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/LocalFileInfo;->file:Ljava/io/File;

    iput-wide p2, p0, Lcom/metamoji/media/video/dialog/LocalFileInfo;->duration:J

    iput-object p4, p0, Lcom/metamoji/media/video/dialog/LocalFileInfo;->ticket:Ljava/lang/String;

    .line 886
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/metamoji/media/video/dialog/LocalFileInfo;->lastModified:J

    .line 894
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/metamoji/media/video/dialog/LocalFileInfo;->size:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/media/video/dialog/LocalFileInfo;Ljava/io/File;JLjava/lang/String;ILjava/lang/Object;)Lcom/metamoji/media/video/dialog/LocalFileInfo;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/metamoji/media/video/dialog/LocalFileInfo;->file:Ljava/io/File;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-wide p2, p0, Lcom/metamoji/media/video/dialog/LocalFileInfo;->duration:J

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-object p4, p0, Lcom/metamoji/media/video/dialog/LocalFileInfo;->ticket:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/metamoji/media/video/dialog/LocalFileInfo;->copy(Ljava/io/File;JLjava/lang/String;)Lcom/metamoji/media/video/dialog/LocalFileInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/LocalFileInfo;->file:Ljava/io/File;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/metamoji/media/video/dialog/LocalFileInfo;->duration:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/LocalFileInfo;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/io/File;JLjava/lang/String;)Lcom/metamoji/media/video/dialog/LocalFileInfo;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "ticket"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/metamoji/media/video/dialog/LocalFileInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/metamoji/media/video/dialog/LocalFileInfo;-><init>(Ljava/io/File;JLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/media/video/dialog/LocalFileInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/media/video/dialog/LocalFileInfo;

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/LocalFileInfo;->file:Ljava/io/File;

    iget-object v3, p1, Lcom/metamoji/media/video/dialog/LocalFileInfo;->file:Ljava/io/File;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/metamoji/media/video/dialog/LocalFileInfo;->duration:J

    iget-wide v5, p1, Lcom/metamoji/media/video/dialog/LocalFileInfo;->duration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/metamoji/media/video/dialog/LocalFileInfo;->ticket:Ljava/lang/String;

    iget-object p1, p1, Lcom/metamoji/media/video/dialog/LocalFileInfo;->ticket:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDuration()J
    .locals 2

    .line 884
    iget-wide v0, p0, Lcom/metamoji/media/video/dialog/LocalFileInfo;->duration:J

    return-wide v0
.end method

.method public final getDurationText()Ljava/lang/String;
    .locals 7

    .line 891
    new-instance v0, Lcom/metamoji/video/AmvTimeSpan;

    iget-wide v1, p0, Lcom/metamoji/media/video/dialog/LocalFileInfo;->duration:J

    invoke-direct {v0, v1, v2}, Lcom/metamoji/video/AmvTimeSpan;-><init>(J)V

    .line 892
    invoke-virtual {v0}, Lcom/metamoji/video/AmvTimeSpan;->getHours()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTimeSpan;->getMinutes()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTimeSpan;->getSeconds()J

    move-result-wide v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFile()Ljava/io/File;
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/LocalFileInfo;->file:Ljava/io/File;

    return-object v0
.end method

.method public final getLastModified()J
    .locals 2

    .line 886
    iget-wide v0, p0, Lcom/metamoji/media/video/dialog/LocalFileInfo;->lastModified:J

    return-wide v0
.end method

.method public final getLastModifiedText()Ljava/lang/String;
    .locals 3

    .line 888
    sget-object v0, Lcom/metamoji/media/video/VfClipInfo;->Companion:Lcom/metamoji/media/video/VfClipInfo$Companion;

    iget-wide v1, p0, Lcom/metamoji/media/video/dialog/LocalFileInfo;->lastModified:J

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/media/video/VfClipInfo$Companion;->formatDateFromMS(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSize()J
    .locals 2

    .line 894
    iget-wide v0, p0, Lcom/metamoji/media/video/dialog/LocalFileInfo;->size:J

    return-wide v0
.end method

.method public final getTicket()Ljava/lang/String;
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/LocalFileInfo;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/LocalFileInfo;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/metamoji/media/video/dialog/LocalFileInfo;->duration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/LocalFileInfo;->ticket:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/LocalFileInfo;->file:Ljava/io/File;

    iget-wide v1, p0, Lcom/metamoji/media/video/dialog/LocalFileInfo;->duration:J

    iget-object v3, p0, Lcom/metamoji/media/video/dialog/LocalFileInfo;->ticket:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LocalFileInfo(file="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", duration="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ticket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
