.class Lcom/metamoji/nt/itemlist/NtItemList$2;
.super Ljava/lang/Object;
.source "NtItemList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtItemList;->clearListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/itemlist/NtItemList;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtItemList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 240
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$2;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList$2;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList$2;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtItemList;->_listView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    return-void
.end method
