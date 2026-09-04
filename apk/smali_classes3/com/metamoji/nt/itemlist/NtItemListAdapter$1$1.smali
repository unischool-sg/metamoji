.class Lcom/metamoji/nt/itemlist/NtItemListAdapter$1$1;
.super Ljava/lang/Object;
.source "NtItemListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtItemListAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/itemlist/NtItemListAdapter$1;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtItemListAdapter$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter$1$1;->this$1:Lcom/metamoji/nt/itemlist/NtItemListAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter$1$1;->this$1:Lcom/metamoji/nt/itemlist/NtItemListAdapter$1;

    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtItemListAdapter$1;->val$convertView:Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter$1$1;->this$1:Lcom/metamoji/nt/itemlist/NtItemListAdapter$1;

    iget-object v1, v1, Lcom/metamoji/nt/itemlist/NtItemListAdapter$1;->val$adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    iget-object v2, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter$1$1;->this$1:Lcom/metamoji/nt/itemlist/NtItemListAdapter$1;

    iget-object v2, v2, Lcom/metamoji/nt/itemlist/NtItemListAdapter$1;->this$0:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-static {v2}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->-$$Nest$fgetm_items(Lcom/metamoji/nt/itemlist/NtItemListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->load(Lcom/metamoji/nt/itemlist/NtItemListAdapter;Ljava/util/ArrayList;)Z

    return-void
.end method
