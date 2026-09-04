.class Lcom/metamoji/nt/itemlist/NtItemList$11$1;
.super Ljava/lang/Object;
.source "NtItemList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtItemList$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/itemlist/NtItemList$11;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtItemList$11;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1240
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$11$1;->this$1:Lcom/metamoji/nt/itemlist/NtItemList$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1243
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList$11$1;->this$1:Lcom/metamoji/nt/itemlist/NtItemList$11;

    iget v0, v0, Lcom/metamoji/nt/itemlist/NtItemList$11;->val$start:I

    :goto_0
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList$11$1;->this$1:Lcom/metamoji/nt/itemlist/NtItemList$11;

    iget v1, v1, Lcom/metamoji/nt/itemlist/NtItemList$11;->val$end:I

    if-gt v0, v1, :cond_3

    .line 1244
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList$11$1;->this$1:Lcom/metamoji/nt/itemlist/NtItemList$11;

    iget-object v1, v1, Lcom/metamoji/nt/itemlist/NtItemList$11;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    invoke-static {v1}, Lcom/metamoji/nt/itemlist/NtItemList;->-$$Nest$fgetm_dragItemPosition(Lcom/metamoji/nt/itemlist/NtItemList;)I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 1245
    :cond_0
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList$11$1;->this$1:Lcom/metamoji/nt/itemlist/NtItemList$11;

    iget-object v1, v1, Lcom/metamoji/nt/itemlist/NtItemList$11;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/itemlist/NtItemList;->getViewAt(I)Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1246
    invoke-virtual {v1}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->isPurged()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1249
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->purge()V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
