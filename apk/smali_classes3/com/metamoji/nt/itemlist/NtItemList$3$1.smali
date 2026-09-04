.class Lcom/metamoji/nt/itemlist/NtItemList$3$1;
.super Ljava/lang/Object;
.source "NtItemList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtItemList$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/itemlist/NtItemList$3;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtItemList$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 297
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$3$1;->this$1:Lcom/metamoji/nt/itemlist/NtItemList$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList$3$1;->this$1:Lcom/metamoji/nt/itemlist/NtItemList$3;

    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtItemList$3;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtItemList;->updateListMargin()V

    .line 304
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList$3$1;->this$1:Lcom/metamoji/nt/itemlist/NtItemList$3;

    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtItemList$3;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList$3$1;->this$1:Lcom/metamoji/nt/itemlist/NtItemList$3;

    iget v1, v1, Lcom/metamoji/nt/itemlist/NtItemList$3;->val$position:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/metamoji/nt/itemlist/NtItemList;->selectItem(IZZ)V

    return-void
.end method
