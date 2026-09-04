.class public final Lcom/metamoji/un/video/UnVideoUnit$ExtInfoValue;
.super Ljava/lang/Object;
.source "UnVideoUnit.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/video/UnVideoUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtInfoValue"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/metamoji/un/video/UnVideoUnit$ExtInfoValue;",
        "",
        "<init>",
        "()V",
        "SUB_CMD_TRIMMING",
        "",
        "SUB_CMD_FINISH",
        "SUB_CMD_INSERT",
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
.field public static final INSTANCE:Lcom/metamoji/un/video/UnVideoUnit$ExtInfoValue;

.field public static final SUB_CMD_FINISH:Ljava/lang/String; = "finish"

.field public static final SUB_CMD_INSERT:Ljava/lang/String; = "insert"

.field public static final SUB_CMD_TRIMMING:Ljava/lang/String; = "trimming"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/un/video/UnVideoUnit$ExtInfoValue;

    invoke-direct {v0}, Lcom/metamoji/un/video/UnVideoUnit$ExtInfoValue;-><init>()V

    sput-object v0, Lcom/metamoji/un/video/UnVideoUnit$ExtInfoValue;->INSTANCE:Lcom/metamoji/un/video/UnVideoUnit$ExtInfoValue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
