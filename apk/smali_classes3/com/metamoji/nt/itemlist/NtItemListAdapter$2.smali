.class Lcom/metamoji/nt/itemlist/NtItemListAdapter$2;
.super Ljava/lang/Object;
.source "NtItemListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtItemListAdapter;->setThumbnail(Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;Lcom/metamoji/cm/Blob;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

.field final synthetic val$holder:Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtItemListAdapter;Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;)V
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

    .line 172
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter$2;->this$0:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    iput-object p2, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter$2;->val$holder:Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter$2;->this$0:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter$2;->val$holder:Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;

    iget-object v1, v1, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->item:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->_updateThumbnail(Ljava/lang/Object;)V

    return-void
.end method
