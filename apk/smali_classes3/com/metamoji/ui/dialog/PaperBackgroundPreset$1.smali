.class Lcom/metamoji/ui/dialog/PaperBackgroundPreset$1;
.super Ljava/lang/Object;
.source "PaperBackgroundPreset.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/PaperBackgroundPreset;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/PaperBackgroundPreset;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset$1;->this$0:Lcom/metamoji/ui/dialog/PaperBackgroundPreset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 70
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset$1;->this$0:Lcom/metamoji/ui/dialog/PaperBackgroundPreset;

    new-instance v0, Lcom/metamoji/ui/dialog/PaperBackground;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/PaperBackground;-><init>()V

    iput-object v0, p1, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_dlgPaperBackground:Lcom/metamoji/ui/dialog/PaperBackground;

    .line 71
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset$1;->this$0:Lcom/metamoji/ui/dialog/PaperBackgroundPreset;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_dlgPaperBackground:Lcom/metamoji/ui/dialog/PaperBackground;

    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset$1;->this$0:Lcom/metamoji/ui/dialog/PaperBackgroundPreset;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->-$$Nest$fget_param(Lcom/metamoji/ui/dialog/PaperBackgroundPreset;)Lcom/metamoji/ui/UiPaperSettingsParam;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/PaperBackground;->set_param(Lcom/metamoji/ui/UiPaperSettingsParam;)V

    .line 72
    iget-object p1, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset$1;->this$0:Lcom/metamoji/ui/dialog/PaperBackgroundPreset;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->_dlgPaperBackground:Lcom/metamoji/ui/dialog/PaperBackground;

    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperBackgroundPreset$1;->this$0:Lcom/metamoji/ui/dialog/PaperBackgroundPreset;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "PaperBackground"

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/ui/dialog/PaperBackground;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
