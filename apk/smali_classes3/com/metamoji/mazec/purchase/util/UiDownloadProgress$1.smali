.class Lcom/metamoji/mazec/purchase/util/UiDownloadProgress$1;
.super Landroid/app/Dialog;
.source "UiDownloadProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress$1;->this$0:Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
