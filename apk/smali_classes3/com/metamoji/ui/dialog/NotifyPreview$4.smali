.class Lcom/metamoji/ui/dialog/NotifyPreview$4;
.super Ljava/lang/Object;
.source "NotifyPreview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    .line 181
    iput-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview$4;->this$0:Lcom/metamoji/ui/dialog/NotifyPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    .line 201
    iget-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview$4;->this$0:Lcom/metamoji/ui/dialog/NotifyPreview;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/NotifyPreview;->-$$Nest$fgetmCustomView(Lcom/metamoji/ui/dialog/NotifyPreview;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview$4;->this$0:Lcom/metamoji/ui/dialog/NotifyPreview;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/NotifyPreview;->-$$Nest$fgetmCustomViewCallback(Lcom/metamoji/ui/dialog/NotifyPreview;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 202
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 203
    iget-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview$4;->this$0:Lcom/metamoji/ui/dialog/NotifyPreview;

    invoke-static {p1, p2}, Lcom/metamoji/ui/dialog/NotifyPreview;->-$$Nest$fputmBackPressedHideCustomView(Lcom/metamoji/ui/dialog/NotifyPreview;Z)V

    .line 204
    iget-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview$4;->this$0:Lcom/metamoji/ui/dialog/NotifyPreview;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/NotifyPreview;->-$$Nest$fgetmCustomViewCallback(Lcom/metamoji/ui/dialog/NotifyPreview;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object p1

    invoke-interface {p1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 205
    iget-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview$4;->this$0:Lcom/metamoji/ui/dialog/NotifyPreview;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/NotifyPreview;->-$$Nest$fgetmSelfHideCustomView(Lcom/metamoji/ui/dialog/NotifyPreview;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/metamoji/ui/dialog/NotifyPreview$4;->this$0:Lcom/metamoji/ui/dialog/NotifyPreview;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/NotifyPreview;->hideCustomView()V

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
