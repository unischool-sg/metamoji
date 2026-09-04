.class Lcom/metamoji/nt/itemlist/NtPageList$8;
.super Ljava/lang/Object;
.source "NtPageList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtPageList;->handleNewButtonTapN(Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/itemlist/NtPageList;

.field final synthetic val$cmdManager:Lcom/metamoji/nt/NtCommandManager;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtPageList;Lcom/metamoji/nt/NtCommandManager;)V
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

    .line 558
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtPageList$8;->this$0:Lcom/metamoji/nt/itemlist/NtPageList;

    iput-object p2, p0, Lcom/metamoji/nt/itemlist/NtPageList$8;->val$cmdManager:Lcom/metamoji/nt/NtCommandManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 561
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList$8;->val$cmdManager:Lcom/metamoji/nt/NtCommandManager;

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_NEW_PAGE:Lcom/metamoji/nt/NtCommand;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method
