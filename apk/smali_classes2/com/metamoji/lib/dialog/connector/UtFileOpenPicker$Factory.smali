.class public final Lcom/metamoji/lib/dialog/connector/UtFileOpenPicker$Factory;
.super Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank$ActivityConnectorFactory;
.source "UtFilePicker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/connector/UtFileOpenPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank$ActivityConnectorFactory<",
        "[",
        "Ljava/lang/String;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0001B%\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\"\u0010\n\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/connector/UtFileOpenPicker$Factory;",
        "Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank$ActivityConnectorFactory;",
        "",
        "",
        "Landroid/net/Uri;",
        "immortalTaskName",
        "connectorName",
        "defArg",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V",
        "createActivityConnector",
        "Lcom/metamoji/lib/dialog/connector/UtActivityConnector;",
        "owner",
        "Lcom/metamoji/lib/dialog/UtDialogOwner;",
        "dialog"
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "immortalTaskName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectorName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defArg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorKey;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank$ActivityConnectorFactory;-><init>(Lcom/metamoji/lib/dialog/connector/UtActivityConnectorKey;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createActivityConnector(Lcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/lib/dialog/connector/UtActivityConnector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            ")",
            "Lcom/metamoji/lib/dialog/connector/UtActivityConnector<",
            "[",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/metamoji/lib/dialog/connector/UtFileOpenPicker;

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/connector/UtFileOpenPicker$Factory;->getDefArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    new-instance v2, Lcom/metamoji/lib/dialog/connector/UtActivityConnector$ImmortalResultCallback;

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/connector/UtFileOpenPicker$Factory;->getKey()Lcom/metamoji/lib/dialog/connector/UtActivityConnectorKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorKey;->getImmortalTaskName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/metamoji/lib/dialog/connector/UtActivityConnector$ImmortalResultCallback;-><init>(Ljava/lang/String;)V

    check-cast v2, Landroidx/activity/result/ActivityResultCallback;

    invoke-direct {v0, p1, v1, v2}, Lcom/metamoji/lib/dialog/connector/UtFileOpenPicker;-><init>(Lcom/metamoji/lib/dialog/UtDialogOwner;[Ljava/lang/String;Landroidx/activity/result/ActivityResultCallback;)V

    check-cast v0, Lcom/metamoji/lib/dialog/connector/UtActivityConnector;

    return-object v0
.end method
