.class Lcom/metamoji/nt/itemlist/NtPageList$6;
.super Ljava/lang/Object;
.source "NtPageList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtPageList;->selectPage(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/itemlist/NtPageList;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtPageList;I)V
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

    .line 269
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtPageList$6;->this$0:Lcom/metamoji/nt/itemlist/NtPageList;

    iput p2, p0, Lcom/metamoji/nt/itemlist/NtPageList$6;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 273
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtPageList$6;->this$0:Lcom/metamoji/nt/itemlist/NtPageList;

    invoke-static {v0}, Lcom/metamoji/nt/itemlist/NtPageList;->-$$Nest$mgetCommandManager(Lcom/metamoji/nt/itemlist/NtPageList;)Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    new-instance v1, Lcom/metamoji/cm/CmContext;

    invoke-direct {v1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 276
    iget v2, p0, Lcom/metamoji/nt/itemlist/NtPageList$6;->val$position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "pageIndex"

    invoke-virtual {v1, v3, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_JUMP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_0
    return-void
.end method
