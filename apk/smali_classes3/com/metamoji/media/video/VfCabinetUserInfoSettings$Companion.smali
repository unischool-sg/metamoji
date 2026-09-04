.class public final Lcom/metamoji/media/video/VfCabinetUserInfoSettings$Companion;
.super Ljava/lang/Object;
.source "VfEditionDef.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/VfCabinetUserInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0007\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/metamoji/media/video/VfCabinetUserInfoSettings$Companion;",
        "",
        "<init>",
        "()V",
        "getInstanceFromSystemSettings",
        "Lcom/metamoji/media/video/VfCabinetUserInfoSettings;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/video/VfCabinetUserInfoSettings$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstanceFromSystemSettings()Lcom/metamoji/media/video/VfCabinetUserInfoSettings;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 88
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v1, Lcom/metamoji/media/video/VfCabinetUserInfoSettings;

    invoke-direct {v1, v0}, Lcom/metamoji/media/video/VfCabinetUserInfoSettings;-><init>(Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
