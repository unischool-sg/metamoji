.class public final Lio/github/toyota32k/media/lib/misc/MediaConstants;
.super Ljava/lang/Object;
.source "MediaConstants.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/misc/MediaConstants;",
        "",
        "()V",
        "KEY_AVC_PPS",
        "",
        "KEY_AVC_SPS",
        "KEY_LEVEL",
        "KEY_PROFILE",
        "KEY_ROTATION_DEGREES",
        "MIMETYPE_AUDIO_AAC",
        "MIMETYPE_VIDEO_AVC",
        "MIMETYPE_VIDEO_H263",
        "MIMETYPE_VIDEO_VP8",
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


# static fields
.field public static final INSTANCE:Lio/github/toyota32k/media/lib/misc/MediaConstants;

.field public static final KEY_AVC_PPS:Ljava/lang/String; = "csd-1"

.field public static final KEY_AVC_SPS:Ljava/lang/String; = "csd-0"

.field public static final KEY_LEVEL:Ljava/lang/String; = "level"

.field public static final KEY_PROFILE:Ljava/lang/String; = "profile"

.field public static final KEY_ROTATION_DEGREES:Ljava/lang/String; = "rotation-degrees"

.field public static final MIMETYPE_AUDIO_AAC:Ljava/lang/String; = "audio/mp4a-latm"

.field public static final MIMETYPE_VIDEO_AVC:Ljava/lang/String; = "video/avc"

.field public static final MIMETYPE_VIDEO_H263:Ljava/lang/String; = "video/3gpp"

.field public static final MIMETYPE_VIDEO_VP8:Ljava/lang/String; = "video/x-vnd.on2.vp8"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/github/toyota32k/media/lib/misc/MediaConstants;

    invoke-direct {v0}, Lio/github/toyota32k/media/lib/misc/MediaConstants;-><init>()V

    sput-object v0, Lio/github/toyota32k/media/lib/misc/MediaConstants;->INSTANCE:Lio/github/toyota32k/media/lib/misc/MediaConstants;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
