.class Lcom/metamoji/lc/ui/LicenseKeyDialog$2;
.super Ljava/lang/Object;
.source "LicenseKeyDialog.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$IPreCloseConfirm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lc/ui/LicenseKeyDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/lc/ui/LicenseKeyDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/lc/ui/LicenseKeyDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$2;->this$0:Lcom/metamoji/lc/ui/LicenseKeyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public confermBeforeClose(Lcom/metamoji/ui/dialog/UiDialog;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
