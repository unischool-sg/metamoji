.class Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup$1;
.super Ljava/lang/Object;
.source "ScSharePalletViewGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup$1;->this$0:Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup$1;->this$0:Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ui/ScSharePalletViewGroup;->updateStatus()V

    .line 61
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 63
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object p1

    .line 64
    instance-of v0, p1, Lcom/metamoji/ns/ui/NsCollaboModeDialog;

    if-eqz v0, :cond_0

    .line 65
    check-cast p1, Lcom/metamoji/ns/ui/NsCollaboModeDialog;

    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->openDialog()V

    :cond_0
    return-void
.end method
