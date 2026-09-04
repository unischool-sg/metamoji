.class Lcom/metamoji/nt/itemlist/NtItemListAdapter$1;
.super Ljava/lang/Object;
.source "NtItemListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtItemListAdapter;->setThumbnail(Lcom/metamoji/nt/itemlist/NtItemListItemContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

.field final synthetic val$adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

.field final synthetic val$cm:Lcom/metamoji/cm/CmTaskManager;

.field final synthetic val$convertView:Lcom/metamoji/nt/itemlist/NtItemListItemContainer;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtItemListAdapter;Lcom/metamoji/cm/CmTaskManager;Lcom/metamoji/nt/itemlist/NtItemListItemContainer;Lcom/metamoji/nt/itemlist/NtItemListAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter$1;->this$0:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    iput-object p2, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter$1;->val$cm:Lcom/metamoji/cm/CmTaskManager;

    iput-object p3, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter$1;->val$convertView:Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    iput-object p4, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter$1;->val$adapter:Lcom/metamoji/nt/itemlist/NtItemListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListAdapter$1;->val$cm:Lcom/metamoji/cm/CmTaskManager;

    new-instance v1, Lcom/metamoji/nt/itemlist/NtItemListAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/itemlist/NtItemListAdapter$1$1;-><init>(Lcom/metamoji/nt/itemlist/NtItemListAdapter$1;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
