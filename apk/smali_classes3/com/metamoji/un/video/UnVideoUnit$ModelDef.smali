.class public final Lcom/metamoji/un/video/UnVideoUnit$ModelDef;
.super Lcom/metamoji/nt/NtUnitController$ModelDef;
.source "UnVideoUnit.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/video/UnVideoUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModelDef"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/video/UnVideoUnit$ModelDef$Prop;,
        Lcom/metamoji/un/video/UnVideoUnit$ModelDef$Value;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u0007\u0008B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/metamoji/un/video/UnVideoUnit$ModelDef;",
        "Lcom/metamoji/nt/NtUnitController$ModelDef;",
        "<init>",
        "()V",
        "MODELTYPE_VIDEO_MARKERS",
        "",
        "VIDEO_MARKERS",
        "Prop",
        "Value",
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
.field public static final INSTANCE:Lcom/metamoji/un/video/UnVideoUnit$ModelDef;

.field public static final MODELTYPE_VIDEO_MARKERS:Ljava/lang/String; = "video.markers"

.field public static final VIDEO_MARKERS:Ljava/lang/String; = "markers"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/un/video/UnVideoUnit$ModelDef;

    invoke-direct {v0}, Lcom/metamoji/un/video/UnVideoUnit$ModelDef;-><init>()V

    sput-object v0, Lcom/metamoji/un/video/UnVideoUnit$ModelDef;->INSTANCE:Lcom/metamoji/un/video/UnVideoUnit$ModelDef;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitController$ModelDef;-><init>()V

    return-void
.end method
