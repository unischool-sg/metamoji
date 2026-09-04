.class Lcom/metamoji/ui/dialog/WebDavListView$2;
.super Ljava/lang/Object;
.source "WebDavListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/WebDavListView;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/WebDavListView;

.field final synthetic val$listFileInfo:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/WebDavListView;Ljava/util/ArrayList;)V
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

    .line 178
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavListView$2;->this$0:Lcom/metamoji/ui/dialog/WebDavListView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/WebDavListView$2;->val$listFileInfo:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 181
    new-instance v0, Lcom/metamoji/ui/dialog/WebDavListView$FileInfoArrayAdapter;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/WebDavListView$2;->this$0:Lcom/metamoji/ui/dialog/WebDavListView;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/WebDavListView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/ui/dialog/WebDavListView$2;->val$listFileInfo:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/ui/dialog/WebDavListView$FileInfoArrayAdapter;-><init>(Lcom/metamoji/ui/dialog/WebDavListView;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 182
    iget-object v1, p0, Lcom/metamoji/ui/dialog/WebDavListView$2;->this$0:Lcom/metamoji/ui/dialog/WebDavListView;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/dialog/WebDavListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
