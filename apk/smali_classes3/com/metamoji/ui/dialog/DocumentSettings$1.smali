.class Lcom/metamoji/ui/dialog/DocumentSettings$1;
.super Ljava/lang/Object;
.source "DocumentSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/DocumentSettings;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/DocumentSettings;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/DocumentSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings$1;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 170
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings$1;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DocumentSettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "DocumentThumbnail"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    .line 174
    :cond_0
    new-instance p1, Lcom/metamoji/ui/dialog/DocumentThumbnail;

    invoke-direct {p1}, Lcom/metamoji/ui/dialog/DocumentThumbnail;-><init>()V

    .line 175
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings$1;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/DocumentSettings;->_param:Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/dialog/DocumentThumbnail;->set_param(Lcom/metamoji/ui/dialog/DocumentSettings$DocSetParam;)V

    .line 176
    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings$1;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/DocumentSettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/ui/dialog/DocumentThumbnail;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
