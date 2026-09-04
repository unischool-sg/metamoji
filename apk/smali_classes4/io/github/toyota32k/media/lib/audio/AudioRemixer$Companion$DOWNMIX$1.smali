.class public final Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion$DOWNMIX$1;
.super Ljava/lang/Object;
.source "AudioRemixer.kt"

# interfaces
.implements Lio/github/toyota32k/media/lib/audio/AudioRemixer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "io/github/toyota32k/media/lib/audio/AudioRemixer$Companion$DOWNMIX$1",
        "Lio/github/toyota32k/media/lib/audio/AudioRemixer;",
        "SIGNED_SHORT_LIMIT",
        "",
        "UNSIGNED_SHORT_MAX",
        "remix",
        "",
        "inSBuff",
        "Ljava/nio/ShortBuffer;",
        "outSBuff",
        "libMedia_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final SIGNED_SHORT_LIMIT:I

.field private final UNSIGNED_SHORT_MAX:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8000

    .line 10
    iput v0, p0, Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion$DOWNMIX$1;->SIGNED_SHORT_LIMIT:I

    const v0, 0xffff

    .line 11
    iput v0, p0, Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion$DOWNMIX$1;->UNSIGNED_SHORT_MAX:I

    return-void
.end method


# virtual methods
.method public remix(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;)V
    .locals 6

    const-string v0, "inSBuff"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outSBuff"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 17
    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 20
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->get()S

    move-result v2

    iget v3, p0, Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion$DOWNMIX$1;->SIGNED_SHORT_LIMIT:I

    add-int/2addr v2, v3

    .line 21
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->get()S

    move-result v3

    iget v4, p0, Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion$DOWNMIX$1;->SIGNED_SHORT_LIMIT:I

    add-int/2addr v3, v4

    if-lt v2, v4, :cond_1

    if-ge v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int v5, v2, v3

    mul-int/lit8 v5, v5, 0x2

    mul-int/2addr v2, v3

    .line 27
    div-int/2addr v2, v4

    sub-int/2addr v5, v2

    iget v2, p0, Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion$DOWNMIX$1;->UNSIGNED_SHORT_MAX:I

    sub-int/2addr v5, v2

    goto :goto_2

    :cond_1
    :goto_1
    mul-int/2addr v2, v3

    .line 25
    div-int v5, v2, v4

    .line 29
    :goto_2
    iget v2, p0, Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion$DOWNMIX$1;->UNSIGNED_SHORT_MAX:I

    add-int/lit8 v3, v2, 0x1

    if-ne v5, v3, :cond_2

    move v5, v2

    :cond_2
    sub-int/2addr v5, v4

    int-to-short v2, v5

    .line 30
    invoke-virtual {p2, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    goto :goto_0

    :cond_3
    return-void
.end method
