.class public final Lcom/metamoji/video/AmvTrimmingController$SavedData;
.super Ljava/lang/Object;
.source "AmvTrimmingController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/AmvTrimmingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SavedData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\t\u0010\nB\u0011\u0008\u0016\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\t\u0010\rJ\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u000b\u001a\u00020\u000cR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0002\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012\"\u0004\u0008\u0016\u0010\u0014R\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0012\"\u0004\u0008\u0018\u0010\u0014R\u001a\u0010\u0008\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0012\"\u0004\u0008\u001a\u0010\u0014\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/metamoji/video/AmvTrimmingController$SavedData;",
        "",
        "isPlaying",
        "",
        "seekPosition",
        "",
        "current",
        "trimStart",
        "trimEnd",
        "<init>",
        "(ZJJJJ)V",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "()Z",
        "setPlaying",
        "(Z)V",
        "getSeekPosition",
        "()J",
        "setSeekPosition",
        "(J)V",
        "getCurrent",
        "setCurrent",
        "getTrimStart",
        "setTrimStart",
        "getTrimEnd",
        "setTrimEnd",
        "writeToParcel",
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
.field private current:J

.field private isPlaying:Z

.field private seekPosition:J

.field private trimEnd:J

.field private trimStart:J


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 11

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/metamoji/video/AmvTrimmingController$SavedData;-><init>(ZJJJJ)V

    return-void
.end method

.method public constructor <init>(ZJJJJ)V
    .locals 0

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    iput-boolean p1, p0, Lcom/metamoji/video/AmvTrimmingController$SavedData;->isPlaying:Z

    .line 516
    iput-wide p2, p0, Lcom/metamoji/video/AmvTrimmingController$SavedData;->seekPosition:J

    .line 517
    iput-wide p4, p0, Lcom/metamoji/video/AmvTrimmingController$SavedData;->current:J

    .line 518
    iput-wide p6, p0, Lcom/metamoji/video/AmvTrimmingController$SavedData;->trimStart:J

    .line 519
    iput-wide p8, p0, Lcom/metamoji/video/AmvTrimmingController$SavedData;->trimEnd:J

    return-void
.end method


# virtual methods
.method public final getCurrent()J
    .locals 2

    .line 517
    iget-wide v0, p0, Lcom/metamoji/video/AmvTrimmingController$SavedData;->current:J

    return-wide v0
.end method

.method public final getSeekPosition()J
    .locals 2

    .line 516
    iget-wide v0, p0, Lcom/metamoji/video/AmvTrimmingController$SavedData;->seekPosition:J

    return-wide v0
.end method

.method public final getTrimEnd()J
    .locals 2

    .line 519
    iget-wide v0, p0, Lcom/metamoji/video/AmvTrimmingController$SavedData;->trimEnd:J

    return-wide v0
.end method

.method public final getTrimStart()J
    .locals 2

    .line 518
    iget-wide v0, p0, Lcom/metamoji/video/AmvTrimmingController$SavedData;->trimStart:J

    return-wide v0
.end method

.method public final isPlaying()Z
    .locals 1

    .line 515
    iget-boolean v0, p0, Lcom/metamoji/video/AmvTrimmingController$SavedData;->isPlaying:Z

    return v0
.end method

.method public final setCurrent(J)V
    .locals 0

    .line 517
    iput-wide p1, p0, Lcom/metamoji/video/AmvTrimmingController$SavedData;->current:J

    return-void
.end method

.method public final setPlaying(Z)V
    .locals 0

    .line 515
    iput-boolean p1, p0, Lcom/metamoji/video/AmvTrimmingController$SavedData;->isPlaying:Z

    return-void
.end method

.method public final setSeekPosition(J)V
    .locals 0

    .line 516
    iput-wide p1, p0, Lcom/metamoji/video/AmvTrimmingController$SavedData;->seekPosition:J

    return-void
.end method

.method public final setTrimEnd(J)V
    .locals 0

    .line 519
    iput-wide p1, p0, Lcom/metamoji/video/AmvTrimmingController$SavedData;->trimEnd:J

    return-void
.end method

.method public final setTrimStart(J)V
    .locals 0

    .line 518
    iput-wide p1, p0, Lcom/metamoji/video/AmvTrimmingController$SavedData;->trimStart:J

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    iget-boolean v0, p0, Lcom/metamoji/video/AmvTrimmingController$SavedData;->isPlaying:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    iget-wide v0, p0, Lcom/metamoji/video/AmvTrimmingController$SavedData;->seekPosition:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 523
    iget-wide v0, p0, Lcom/metamoji/video/AmvTrimmingController$SavedData;->current:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 524
    iget-wide v0, p0, Lcom/metamoji/video/AmvTrimmingController$SavedData;->trimStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 525
    iget-wide v0, p0, Lcom/metamoji/video/AmvTrimmingController$SavedData;->trimEnd:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
