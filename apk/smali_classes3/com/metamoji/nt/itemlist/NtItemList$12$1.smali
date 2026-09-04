.class Lcom/metamoji/nt/itemlist/NtItemList$12$1;
.super Ljava/lang/Object;
.source "NtItemList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtItemList$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/itemlist/NtItemList$12;

.field final synthetic val$item:Lcom/metamoji/nt/itemlist/NtItemListItemContainer;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtItemList$12;Lcom/metamoji/nt/itemlist/NtItemListItemContainer;)V
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

    .line 1270
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$12$1;->this$1:Lcom/metamoji/nt/itemlist/NtItemList$12;

    iput-object p2, p0, Lcom/metamoji/nt/itemlist/NtItemList$12$1;->val$item:Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1274
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList$12$1;->this$1:Lcom/metamoji/nt/itemlist/NtItemList$12;

    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtItemList$12;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtItemList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList$12$1;->this$1:Lcom/metamoji/nt/itemlist/NtItemList$12;

    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtItemList$12;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtItemList;->_adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList$12$1;->val$item:Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->toItemLoaded(Lcom/metamoji/nt/itemlist/NtItemListItemContainer;)Z

    :cond_0
    return-void
.end method
