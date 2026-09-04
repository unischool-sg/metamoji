.class Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter$2;
.super Ljava/lang/Object;
.source "WebDavSelectServer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 86
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter$2;->this$1:Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter$2;->val$itemData:Lcom/metamoji/ex/webdav/WebDAVInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 89
    iget-object p1, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter$2;->this$1:Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;->-$$Nest$fgetmSelectListener(Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;)Lcom/metamoji/ui/dialog/WebDavSelectServer$IOnServerSelected;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter$2;->this$1:Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;->-$$Nest$fgetmSelectListener(Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter;)Lcom/metamoji/ui/dialog/WebDavSelectServer$IOnServerSelected;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer$ServerListAdapter$2;->val$itemData:Lcom/metamoji/ex/webdav/WebDAVInfo;

    invoke-interface {p1, v0}, Lcom/metamoji/ui/dialog/WebDavSelectServer$IOnServerSelected;->onServerSelected(Lcom/metamoji/ex/webdav/WebDAVInfo;)Z

    :cond_0
    return-void
.end method
