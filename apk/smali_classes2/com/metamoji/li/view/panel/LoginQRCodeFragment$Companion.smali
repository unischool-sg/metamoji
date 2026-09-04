.class public final Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;
.super Ljava/lang/Object;
.source "LoginQRCodeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/li/view/panel/LoginQRCodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;",
        "",
        "<init>",
        "()V",
        "logger",
        "Lcom/metamoji/lib/utils/UtLog;",
        "getLogger",
        "()Lcom/metamoji/lib/utils/UtLog;",
        "logger$delegate",
        "Lkotlin/Lazy;",
        "ERROR_MESSAGE_INTERVAL",
        "",
        "MSG_TAG",
        "",
        "getMSG_TAG",
        "()Ljava/lang/String;",
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

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLogger()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 44
    invoke-static {}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->access$getLogger$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public final getMSG_TAG()Ljava/lang/String;
    .locals 1

    .line 47
    invoke-static {}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->access$getMSG_TAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
