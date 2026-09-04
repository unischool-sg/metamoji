.class Lcom/metamoji/ui/dialog/WebDavSelectDoc$2;
.super Ljava/lang/Object;
.source "WebDavSelectDoc.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/WebDavListView$IOnFileSelected;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/WebDavSelectDoc;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/WebDavSelectDoc;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/WebDavSelectDoc;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$2;->this$0:Lcom/metamoji/ui/dialog/WebDavSelectDoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSelected(Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;)Z
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$2;->this$0:Lcom/metamoji/ui/dialog/WebDavSelectDoc;

    invoke-static {v0, p1}, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->-$$Nest$fputmFile(Lcom/metamoji/ui/dialog/WebDavSelectDoc;Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;)V

    .line 131
    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object p1, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$2;->this$0:Lcom/metamoji/ui/dialog/WebDavSelectDoc;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->-$$Nest$fgetmFileListView(Lcom/metamoji/ui/dialog/WebDavSelectDoc;)Lcom/metamoji/ui/dialog/WebDavListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->onDone(Landroid/view/View;)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$2;->this$0:Lcom/metamoji/ui/dialog/WebDavSelectDoc;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->-$$Nest$fputmCurrentPath(Lcom/metamoji/ui/dialog/WebDavSelectDoc;Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$2;->this$0:Lcom/metamoji/ui/dialog/WebDavSelectDoc;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->-$$Nest$fgetmCurrentPath(Lcom/metamoji/ui/dialog/WebDavSelectDoc;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->-$$Nest$msetBaseDir(Lcom/metamoji/ui/dialog/WebDavSelectDoc;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
