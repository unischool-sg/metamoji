.class public final synthetic Lcom/metamoji/un/video/UnVideoPlayerManager$ContextMenuListener$WhenMappings;
.super Ljava/lang/Object;
.source "UnVideoPlayerManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/video/UnVideoPlayerManager$ContextMenuListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/metamoji/un/video/UnVideoPlayerManager$MarkerCommand;->values()[Lcom/metamoji/un/video/UnVideoPlayerManager$MarkerCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/metamoji/un/video/UnVideoPlayerManager$MarkerCommand;->REMOVE_MARKER:Lcom/metamoji/un/video/UnVideoPlayerManager$MarkerCommand;

    invoke-virtual {v1}, Lcom/metamoji/un/video/UnVideoPlayerManager$MarkerCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sput-object v0, Lcom/metamoji/un/video/UnVideoPlayerManager$ContextMenuListener$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
