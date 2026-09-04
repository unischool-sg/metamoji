.class Lcom/metamoji/ui/CommandFloater$2;
.super Ljava/lang/Object;
.source "CommandFloater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/CommandFloater;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/CommandFloater;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/CommandFloater;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/metamoji/ui/CommandFloater$2;->this$0:Lcom/metamoji/ui/CommandFloater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 124
    iget-object p1, p0, Lcom/metamoji/ui/CommandFloater$2;->this$0:Lcom/metamoji/ui/CommandFloater;

    invoke-static {p1}, Lcom/metamoji/ui/CommandFloater;->-$$Nest$mgetCommandManager(Lcom/metamoji/ui/CommandFloater;)Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 126
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_REDO:Lcom/metamoji/nt/NtCommand;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_0
    return-void
.end method
