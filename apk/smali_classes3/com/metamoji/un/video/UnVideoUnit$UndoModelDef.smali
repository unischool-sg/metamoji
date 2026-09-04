.class public final Lcom/metamoji/un/video/UnVideoUnit$UndoModelDef;
.super Ljava/lang/Object;
.source "UnVideoUnit.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/video/UnVideoUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UndoModelDef"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0006\u0010\u0003R\u000e\u0010\u0007\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/metamoji/un/video/UnVideoUnit$UndoModelDef;",
        "",
        "<init>",
        "()V",
        "MODELTYPE_VIDEO_UNDO",
        "",
        "getMODELTYPE_VIDEO_UNDO$annotations",
        "VIDEO_UNDO_VERSION_LATEST",
        "",
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
.field public static final INSTANCE:Lcom/metamoji/un/video/UnVideoUnit$UndoModelDef;

.field public static final MODELTYPE_VIDEO_UNDO:Ljava/lang/String; = "video.undo"

.field public static final VIDEO_UNDO_VERSION_LATEST:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/un/video/UnVideoUnit$UndoModelDef;

    invoke-direct {v0}, Lcom/metamoji/un/video/UnVideoUnit$UndoModelDef;-><init>()V

    sput-object v0, Lcom/metamoji/un/video/UnVideoUnit$UndoModelDef;->INSTANCE:Lcom/metamoji/un/video/UnVideoUnit$UndoModelDef;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getMODELTYPE_VIDEO_UNDO$annotations()V
    .locals 0

    return-void
.end method
