.class Lcom/metamoji/ui/dialog/UiDialog$2;
.super Ljava/lang/Object;
.source "UiDialog.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/UiDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/UiDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/UiDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 473
    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiDialog$2;->this$0:Lcom/metamoji/ui/dialog/UiDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(ILjava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    return-void
.end method
