.class public final Lcom/metamoji/un/video/operation/UnVideoOperation$Companion$ModelDef$Prop;
.super Ljava/lang/Object;
.source "UnVideoOperation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/video/operation/UnVideoOperation$Companion$ModelDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Prop"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/metamoji/un/video/operation/UnVideoOperation$Companion$ModelDef$Prop;",
        "",
        "<init>",
        "()V",
        "VIDEO_OPERATION_TYPE",
        "",
        "VIDEO_OPERATION_RECORD",
        "VIDEO_OPERATION_PASSIVE",
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
.field public static final INSTANCE:Lcom/metamoji/un/video/operation/UnVideoOperation$Companion$ModelDef$Prop;

.field public static final VIDEO_OPERATION_PASSIVE:Ljava/lang/String; = "passive"

.field public static final VIDEO_OPERATION_RECORD:Ljava/lang/String; = "record"

.field public static final VIDEO_OPERATION_TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/un/video/operation/UnVideoOperation$Companion$ModelDef$Prop;

    invoke-direct {v0}, Lcom/metamoji/un/video/operation/UnVideoOperation$Companion$ModelDef$Prop;-><init>()V

    sput-object v0, Lcom/metamoji/un/video/operation/UnVideoOperation$Companion$ModelDef$Prop;->INSTANCE:Lcom/metamoji/un/video/operation/UnVideoOperation$Companion$ModelDef$Prop;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
