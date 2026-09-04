.class Lcom/metamoji/ui/dialog/NotifyPreview$1;
.super Landroid/webkit/WebChromeClient;
.source "NotifyPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/NotifyPreview;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/NotifyPreview;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/NotifyPreview;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview$1;->this$0:Lcom/metamoji/ui/dialog/NotifyPreview;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NotifyPreview$1;->this$0:Lcom/metamoji/ui/dialog/NotifyPreview;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/NotifyPreview;->-$$Nest$fgetmCustomView(Lcom/metamoji/ui/dialog/NotifyPreview;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NotifyPreview$1;->this$0:Lcom/metamoji/ui/dialog/NotifyPreview;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/NotifyPreview;->hideCustomView()V

    .line 121
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NotifyPreview$1;->this$0:Lcom/metamoji/ui/dialog/NotifyPreview;

    invoke-static {v0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NotifyPreview;->-$$Nest$mshowCustomView(Lcom/metamoji/ui/dialog/NotifyPreview;Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 112
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NotifyPreview$1;->this$0:Lcom/metamoji/ui/dialog/NotifyPreview;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/metamoji/ui/dialog/NotifyPreview;->-$$Nest$fputmSelfHideCustomView(Lcom/metamoji/ui/dialog/NotifyPreview;Z)V

    .line 102
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NotifyPreview$1;->this$0:Lcom/metamoji/ui/dialog/NotifyPreview;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/NotifyPreview;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getRequestedOrientation()I

    move-result v0

    .line 104
    iget-object v1, p0, Lcom/metamoji/ui/dialog/NotifyPreview$1;->this$0:Lcom/metamoji/ui/dialog/NotifyPreview;

    invoke-static {v1, p1, v0, p2}, Lcom/metamoji/ui/dialog/NotifyPreview;->-$$Nest$mshowCustomView(Lcom/metamoji/ui/dialog/NotifyPreview;Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 105
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method
