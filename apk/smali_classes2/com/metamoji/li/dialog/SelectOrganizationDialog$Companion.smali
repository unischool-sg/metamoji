.class public final Lcom/metamoji/li/dialog/SelectOrganizationDialog$Companion;
.super Ljava/lang/Object;
.source "SelectOrganizationDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/li/dialog/SelectOrganizationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/li/dialog/SelectOrganizationDialog$Companion;",
        "",
        "<init>",
        "()V",
        "logger",
        "Lcom/metamoji/lib/utils/UtLog;",
        "getLogger",
        "()Lcom/metamoji/lib/utils/UtLog;",
        "create",
        "Lcom/metamoji/li/dialog/SelectOrganizationDialog;",
        "coid",
        "",
        "url",
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

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/li/dialog/SelectOrganizationDialog;
    .locals 1

    .line 202
    new-instance v0, Lcom/metamoji/li/dialog/SelectOrganizationDialog;

    invoke-direct {v0}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;-><init>()V

    .line 203
    invoke-virtual {v0, p1}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->setCurrentCoId(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0, p2}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->setCurrentServerUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getLogger()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 199
    invoke-static {}, Lcom/metamoji/li/dialog/SelectOrganizationDialog;->access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    return-object v0
.end method
