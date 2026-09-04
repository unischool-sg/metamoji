.class Lcom/metamoji/media/voice/ui/VcPlaylist$1;
.super Ljava/lang/Object;
.source "VcPlaylist.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcPlaylist;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/ui/VcPlaylist;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/ui/VcPlaylist;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlaylist$1;->this$0:Lcom/metamoji/media/voice/ui/VcPlaylist;

    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlaylist$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlaylist$1;->val$view:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->vc_playlist_listview_layer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 92
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlaylist$1;->this$0:Lcom/metamoji/media/voice/ui/VcPlaylist;

    iget-object v1, v1, Lcom/metamoji/media/voice/ui/VcPlaylist;->m_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 97
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method
