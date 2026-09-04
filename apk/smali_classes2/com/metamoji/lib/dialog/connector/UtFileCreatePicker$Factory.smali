.class public final Lcom/metamoji/lib/dialog/connector/UtFileCreatePicker$Factory;
.super Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank$ActivityConnectorFactory;
.source "UtFilePicker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/connector/UtFileCreatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank$ActivityConnectorFactory<",
        "Ljava/lang/String;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\'\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001c\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u0011\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/connector/UtFileCreatePicker$Factory;",
        "Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank$ActivityConnectorFactory;",
        "",
        "Landroid/net/Uri;",
        "immortalTaskName",
        "connectorName",
        "defArg",
        "mimeType",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getMimeType",
        "()Ljava/lang/String;",
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


# instance fields
.field private final mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "immortalTaskName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectorName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defArg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mimeType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    new-instance v0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorKey;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0, v0, p3}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank$ActivityConnectorFactory;-><init>(Lcom/metamoji/lib/dialog/connector/UtActivityConnectorKey;Ljava/lang/Object;)V

    .line 217
    iput-object p4, p0, Lcom/metamoji/lib/dialog/connector/UtFileCreatePicker$Factory;->mimeType:Ljava/lang/String;

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
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    sget-object v0, Lcom/metamoji/lib/dialog/connector/UtFileCreatePicker;->Companion:Lcom/metamoji/lib/dialog/connector/UtFileCreatePicker$Companion;

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/connector/UtFileCreatePicker$Factory;->getKey()Lcom/metamoji/lib/dialog/connector/UtActivityConnectorKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorKey;->getImmortalTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/connector/UtFileCreatePicker$Factory;->getDefArg()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/lib/dialog/connector/UtFileCreatePicker$Factory;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/metamoji/lib/dialog/connector/UtFileCreatePicker$Companion;->createForImmortalTask(Ljava/lang/String;Lcom/metamoji/lib/dialog/UtDialogOwner;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/lib/dialog/connector/UtFileCreatePicker;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/dialog/connector/UtActivityConnector;

    return-object p1
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/metamoji/lib/dialog/connector/UtFileCreatePicker$Factory;->mimeType:Ljava/lang/String;

    return-object v0
.end method
