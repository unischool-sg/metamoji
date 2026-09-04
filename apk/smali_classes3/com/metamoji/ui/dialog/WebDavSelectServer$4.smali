.class Lcom/metamoji/ui/dialog/WebDavSelectServer$4;
.super Ljava/lang/Object;
.source "WebDavSelectServer.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/AddWebDav$IAddWebDavDialogAfterAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/WebDavSelectServer;->handleAddServerButtonTap()V
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

    .line 239
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer$4;->this$0:Lcom/metamoji/ui/dialog/WebDavSelectServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectServer$4;->this$0:Lcom/metamoji/ui/dialog/WebDavSelectServer;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/WebDavSelectServer;->refreshMemberList()V

    return-void
.end method
