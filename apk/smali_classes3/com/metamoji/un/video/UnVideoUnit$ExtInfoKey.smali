.class public final Lcom/metamoji/un/video/UnVideoUnit$ExtInfoKey;
.super Ljava/lang/Object;
.source "UnVideoUnit.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/video/UnVideoUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtInfoKey"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/metamoji/un/video/UnVideoUnit$ExtInfoKey;",
        "",
        "<init>",
        "()V",
        "VIDEO_SUB_COMMAND",
        "",
        "VIDEO_DELETE_ON_CLOSE",
        "VIDEO_RAW_SOURCE",
        "VIDEO_SOURCE",
        "VIDEO_SIZE",
        "VIDEO_THUMBNAIL",
        "VIDEO_TARGET_DOC_ID",
        "VIDEO_SERVER_ID",
        "VIDEO_TICKET",
        "VIDEO_THUMBNAIL_TICKET",
        "VIDEO_STILL_MODE",
        "VIDEO_START_FROM",
        "VIDEO_PLAY_TO",
        "VIDEO_SOURCE_UNIT",
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


# static fields
.field public static final INSTANCE:Lcom/metamoji/un/video/UnVideoUnit$ExtInfoKey;

.field public static final VIDEO_DELETE_ON_CLOSE:Ljava/lang/String; = "videoDelOnClose"

.field public static final VIDEO_PLAY_TO:Ljava/lang/String; = "videoPlayTo"

.field public static final VIDEO_RAW_SOURCE:Ljava/lang/String; = "videoRawSource"

.field public static final VIDEO_SERVER_ID:Ljava/lang/String; = "videoServerId"

.field public static final VIDEO_SIZE:Ljava/lang/String; = "videoSize"

.field public static final VIDEO_SOURCE:Ljava/lang/String; = "videoSource"

.field public static final VIDEO_SOURCE_UNIT:Ljava/lang/String; = "videoSourceUnit"

.field public static final VIDEO_START_FROM:Ljava/lang/String; = "videoStartFrom"

.field public static final VIDEO_STILL_MODE:Ljava/lang/String; = "videoStillMode"

.field public static final VIDEO_SUB_COMMAND:Ljava/lang/String; = "videoAddSub"

.field public static final VIDEO_TARGET_DOC_ID:Ljava/lang/String; = "videoDocId"

.field public static final VIDEO_THUMBNAIL:Ljava/lang/String; = "videoThumbnail"

.field public static final VIDEO_THUMBNAIL_TICKET:Ljava/lang/String; = "videoThumbnailTicket"

.field public static final VIDEO_TICKET:Ljava/lang/String; = "videoTicket"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/un/video/UnVideoUnit$ExtInfoKey;

    invoke-direct {v0}, Lcom/metamoji/un/video/UnVideoUnit$ExtInfoKey;-><init>()V

    sput-object v0, Lcom/metamoji/un/video/UnVideoUnit$ExtInfoKey;->INSTANCE:Lcom/metamoji/un/video/UnVideoUnit$ExtInfoKey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
