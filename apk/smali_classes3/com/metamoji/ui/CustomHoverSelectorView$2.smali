.class Lcom/metamoji/ui/CustomHoverSelectorView$2;
.super Ljava/lang/Object;
.source "CustomHoverSelectorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/CustomHoverSelectorView;->createExitFullScreenButton()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/CustomHoverSelectorView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/CustomHoverSelectorView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 522
    iput-object p1, p0, Lcom/metamoji/ui/CustomHoverSelectorView$2;->this$0:Lcom/metamoji/ui/CustomHoverSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 525
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    .line 526
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    .line 527
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_EXIT_FULLSCREEN:Lcom/metamoji/nt/NtCommand;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method
