.class public final Lcom/metamoji/un/video/UnVideoUnit$ModelDef$Prop;
.super Ljava/lang/Object;
.source "UnVideoUnit.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/video/UnVideoUnit$ModelDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Prop"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/metamoji/un/video/UnVideoUnit$ModelDef$Prop;",
        "",
        "<init>",
        "()V",
        "VIDEO_DATA_TICKET",
        "",
        "VIDEO_THUMBNAIL_TICKET",
        "VIDEO_THUMBNAIL_TIME",
        "VIDEO_IS_MUTED",
        "VIDEO_STILL_MODE",
        "VIDEO_START_FROM",
        "VIDEO_PLAY_TO",
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
.field public static final INSTANCE:Lcom/metamoji/un/video/UnVideoUnit$ModelDef$Prop;

.field public static final VIDEO_DATA_TICKET:Ljava/lang/String; = "dataTicket"

.field public static final VIDEO_IS_MUTED:Ljava/lang/String; = "isMuted"

.field public static final VIDEO_PLAY_TO:Ljava/lang/String; = "playTo"

.field public static final VIDEO_START_FROM:Ljava/lang/String; = "startFrom"

.field public static final VIDEO_STILL_MODE:Ljava/lang/String; = "stillMode"

.field public static final VIDEO_THUMBNAIL_TICKET:Ljava/lang/String; = "thumbnailTicket"

.field public static final VIDEO_THUMBNAIL_TIME:Ljava/lang/String; = "thumbnailTime"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/un/video/UnVideoUnit$ModelDef$Prop;

    invoke-direct {v0}, Lcom/metamoji/un/video/UnVideoUnit$ModelDef$Prop;-><init>()V

    sput-object v0, Lcom/metamoji/un/video/UnVideoUnit$ModelDef$Prop;->INSTANCE:Lcom/metamoji/un/video/UnVideoUnit$ModelDef$Prop;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
