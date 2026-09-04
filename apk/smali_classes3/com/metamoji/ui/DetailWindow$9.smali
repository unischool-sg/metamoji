.class Lcom/metamoji/ui/DetailWindow$9;
.super Ljava/lang/Object;
.source "DetailWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/DetailWindow;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/DetailWindow;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/DetailWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 248
    iput-object p1, p0, Lcom/metamoji/ui/DetailWindow$9;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 251
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow$9;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-virtual {p1}, Lcom/metamoji/ui/DetailWindow;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 252
    new-instance v0, Lcom/metamoji/ui/dialog/DetailWindowSettings;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/DetailWindowSettings;-><init>()V

    .line 253
    iget-object v1, p0, Lcom/metamoji/ui/DetailWindow$9;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-static {v1, v0}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$msetSettingsToDialog(Lcom/metamoji/ui/DetailWindow;Lcom/metamoji/ui/dialog/DetailWindowSettings;)V

    .line 254
    new-instance v1, Lcom/metamoji/ui/DetailWindow$9$1;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/ui/DetailWindow$9$1;-><init>(Lcom/metamoji/ui/DetailWindow$9;Lcom/metamoji/ui/dialog/DetailWindowSettings;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 263
    const-string v1, "dwindow_option"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/ui/dialog/DetailWindowSettings;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
