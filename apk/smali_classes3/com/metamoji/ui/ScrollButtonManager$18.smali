.class Lcom/metamoji/ui/ScrollButtonManager$18;
.super Ljava/lang/Object;
.source "ScrollButtonManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/ScrollButtonManager;->makeRightPageButton(Landroid/widget/RelativeLayout;Landroid/content/Context;)Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/ScrollButtonManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/ScrollButtonManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1643
    iput-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$18;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1646
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    .line 1647
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 1648
    const-string/jumbo v1, "scrollTo"

    const-string v2, "left"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1649
    iget-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager$18;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {v1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fget_editorPage(Lcom/metamoji/ui/ScrollButtonManager;)Lcom/metamoji/noteanytime/EditorActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/noteanytime/EditorActivity;->getPageListViewStatus()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 1650
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_FORW:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 1652
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_JUMP_FORW:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method
