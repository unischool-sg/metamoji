.class Lcom/metamoji/ui/dialog/WebDavSelectServer$3;
.super Ljava/lang/Object;
.source "WebDavSelectServer.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/WebDavSelectServer$IOnServerSelected;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/WebDavSelectServer;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/WebDavSelectServer;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/WebDavSelectServer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer$3;->this$0:Lcom/metamoji/ui/dialog/WebDavSelectServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServerSelected(Lcom/metamoji/ex/webdav/WebDAVInfo;)Z
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer$3;->this$0:Lcom/metamoji/ui/dialog/WebDavSelectServer;

    iput-object p1, v0, Lcom/metamoji/ui/dialog/WebDavSelectServer;->mSelectServer:Lcom/metamoji/ex/webdav/WebDAVInfo;

    .line 188
    iget-object p1, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer$3;->this$0:Lcom/metamoji/ui/dialog/WebDavSelectServer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/WebDavSelectServer;->onDone(Landroid/view/View;)V

    const/4 p1, 0x0

    return p1
.end method
