.class Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter$1;
.super Ljava/lang/Object;
.source "WebDavSelectServer.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;

.field final synthetic val$itemData:Lcom/metamoji/ex/webdav/WebDAVInfo;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;Lcom/metamoji/ex/webdav/WebDAVInfo;)V
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

    .line 72
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter$1;->this$1:Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter$1;->val$itemData:Lcom/metamoji/ex/webdav/WebDAVInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 78
    iget-object p1, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter$1;->this$1:Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;

    if-eqz p2, :cond_0

    .line 76
    iget-object p1, p1, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;->this$0:Lcom/metamoji/ui/dialog/WebDavSelectServer;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/WebDavSelectServer;->m_deleteItemArray:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter$1;->val$itemData:Lcom/metamoji/ex/webdav/WebDAVInfo;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_0
    iget-object p1, p1, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;->this$0:Lcom/metamoji/ui/dialog/WebDavSelectServer;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/WebDavSelectServer;->m_deleteItemArray:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter$1;->val$itemData:Lcom/metamoji/ex/webdav/WebDAVInfo;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 80
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter$1;->this$1:Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;->this$0:Lcom/metamoji/ui/dialog/WebDavSelectServer;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/WebDavSelectServer;->-$$Nest$mhandleMemberListViewSelectionChanged(Lcom/metamoji/ui/dialog/WebDavSelectServer;)V

    return-void
.end method
